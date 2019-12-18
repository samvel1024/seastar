// Licensed to the Apache Software Foundation (ASF) under one
// or more contributor license agreements.  See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership.  The ASF licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License.  You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// Functions for comparing Arrow data structures

#include <seastar/parquet/arrow/compare.h>

#include <climits>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <memory>
#include <string>
#include <type_traits>
#include <utility>
#include <vector>

#include <seastar/parquet/arrow/array.h>
#include <seastar/parquet/arrow/buffer.h>
#include <seastar/parquet/arrow/status.h>
#include <seastar/parquet/arrow/type.h>
#include <seastar/parquet/arrow/type_traits.h>
#include <seastar/parquet/arrow/util/bit_util.h>
#include <seastar/parquet/arrow/util/checked_cast.h>
#include <seastar/parquet/arrow/util/logging.h>
#include <seastar/parquet/arrow/util/macros.h>
#include <seastar/parquet/arrow/visitor_inline.h>

namespace arrow {

using internal::BitmapEquals;
using internal::checked_cast;

// ----------------------------------------------------------------------
// Public method implementations

namespace internal {

class TypeEqualsVisitor {
 public:
  explicit TypeEqualsVisitor(const DataType& right, bool check_metadata)
      : right_(right), check_metadata_(check_metadata), result_(false) {}

  Status VisitChildren(const DataType& left) {
    if (left.num_children() != right_.num_children()) {
      result_ = false;
      return Status::OK();
    }

    for (int i = 0; i < left.num_children(); ++i) {
      if (!left.child(i)->Equals(right_.child(i), check_metadata_)) {
        result_ = false;
        return Status::OK();
      }
    }
    result_ = true;
    return Status::OK();
  }

  template <typename T>
  typename std::enable_if<std::is_base_of<NoExtraMeta, T>::value ||
                              std::is_base_of<PrimitiveCType, T>::value,
                          Status>::type
  Visit(const T&) {
    result_ = true;
    return Status::OK();
  }

  template <typename T>
  typename std::enable_if<std::is_base_of<IntervalType, T>::value, Status>::type Visit(
      const T& left) {
    const auto& right = checked_cast<const IntervalType&>(right_);
    result_ = right.interval_type() == left.interval_type();
    return Status::OK();
  }

  template <typename T>
  typename std::enable_if<std::is_base_of<TimeType, T>::value ||
                              std::is_base_of<DateType, T>::value ||
                              std::is_base_of<DurationType, T>::value,
                          Status>::type
  Visit(const T& left) {
    const auto& right = checked_cast<const T&>(right_);
    result_ = left.unit() == right.unit();
    return Status::OK();
  }

  Status Visit(const TimestampType& left) {
    const auto& right = checked_cast<const TimestampType&>(right_);
    result_ = left.unit() == right.unit() && left.timezone() == right.timezone();
    return Status::OK();
  }

  Status Visit(const FixedSizeBinaryType& left) {
    const auto& right = checked_cast<const FixedSizeBinaryType&>(right_);
    result_ = left.byte_width() == right.byte_width();
    return Status::OK();
  }

  Status Visit(const ListType& left) { return VisitChildren(left); }

  Status Visit(const LargeListType& left) { return VisitChildren(left); }

  Status Visit(const MapType& left) {
    const auto& right = checked_cast<const MapType&>(right_);
    if (left.keys_sorted() != right.keys_sorted()) {
      result_ = false;
      return Status::OK();
    }
    return VisitChildren(left);
  }

  Status Visit(const FixedSizeListType& left) { return VisitChildren(left); }

  Status Visit(const StructType& left) { return VisitChildren(left); }

  Status Visit(const UnionType& left) {
    const auto& right = checked_cast<const UnionType&>(right_);

    if (left.mode() != right.mode() || left.type_codes() != right.type_codes()) {
      result_ = false;
      return Status::OK();
    }

    result_ = std::equal(
        left.children().begin(), left.children().end(), right.children().begin(),
        [this](const std::shared_ptr<Field>& l, const std::shared_ptr<Field>& r) {
          return l->Equals(r, check_metadata_);
        });
    return Status::OK();
  }

  Status Visit(const DictionaryType& left) {
    const auto& right = checked_cast<const DictionaryType&>(right_);
    result_ = left.index_type()->Equals(right.index_type()) &&
              left.value_type()->Equals(right.value_type()) &&
              (left.ordered() == right.ordered());
    return Status::OK();
  }

  bool result() const { return result_; }

 protected:
  const DataType& right_;
  bool check_metadata_;
  bool result_;
};

}  // namespace internal

bool TypeEquals(const DataType& left, const DataType& right, bool check_metadata) {
  // The arrays are the same object
  if (&left == &right) {
    return true;
  } else if (left.id() != right.id()) {
    return false;
  } else {
    // First try to compute fingerprints
    if (check_metadata) {
      const auto& left_metadata_fp = left.metadata_fingerprint();
      const auto& right_metadata_fp = right.metadata_fingerprint();
      if (left_metadata_fp != right_metadata_fp) {
        return false;
      }
    }

    const auto& left_fp = left.fingerprint();
    const auto& right_fp = right.fingerprint();
    if (!left_fp.empty() && !right_fp.empty()) {
      return left_fp == right_fp;
    }

    // TODO remove check_metadata here?
    internal::TypeEqualsVisitor visitor(right, check_metadata);
    auto error = VisitTypeInline(left, &visitor);
    if (!error.ok()) {
      DCHECK(false) << "Types are not comparable: " << error.ToString();
    }
    return visitor.result();
  }
}

}  // namespace arrow
