#!/bin/bash
set -e
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/builder_decimal.cc $SOURCES/arrow/array/builder_decimal.cc
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/dict_internal.h $SOURCES/arrow/array/dict_internal.h
mkdir -p $SOURCES/arrow && cp $FROM/arrow/record_batch.cc $SOURCES/arrow/record_batch.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/io_util.cc $SOURCES/arrow/util/io_util.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/util_internal.cc $SOURCES/arrow/compute/kernels/util_internal.cc
mkdir -p $SOURCES/arrow && cp $FROM/arrow/array.cc $SOURCES/arrow/array.cc
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/fast-dtoa.h $SOURCES/arrow/vendored/double-conversion/fast-dtoa.h
mkdir -p $SOURCES/arrow/compute && cp $FROM/arrow/compute/operation.cc $SOURCES/arrow/compute/operation.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/platform.cc $SOURCES/parquet/platform.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/thread_pool.cc $SOURCES/arrow/util/thread_pool.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/iterator.cc $SOURCES/arrow/util/iterator.cc
mkdir -p $SOURCES/arrow/vendored/utf8cpp && cp $FROM/arrow/vendored/utf8cpp/core.h $SOURCES/arrow/vendored/utf8cpp/core.h
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/bignum.h $SOURCES/arrow/vendored/double-conversion/bignum.h
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/bignum-dtoa.h $SOURCES/arrow/vendored/double-conversion/bignum-dtoa.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/aggregate.h $SOURCES/arrow/compute/kernels/aggregate.h
mkdir -p $SOURCES/arrow && cp $FROM/arrow/tensor.h $SOURCES/arrow/tensor.h
mkdir -p $SOURCES/arrow && cp $FROM/arrow/type.cc $SOURCES/arrow/type.cc
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/diff.h $SOURCES/arrow/array/diff.h
mkdir -p $SOURCES/arrow && cp $FROM/arrow/sparse_tensor.h $SOURCES/arrow/sparse_tensor.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/memory.cc $SOURCES/arrow/util/memory.cc
mkdir -p $SOURCES/arrow/vendored/utf8cpp && cp $FROM/arrow/vendored/utf8cpp/checked.h $SOURCES/arrow/vendored/utf8cpp/checked.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/sum_internal.h $SOURCES/arrow/compute/kernels/sum_internal.h
mkdir -p $SOURCES/arrow && cp $FROM/arrow/builder.cc $SOURCES/arrow/builder.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/bit_stream_utils.h $SOURCES/arrow/util/bit_stream_utils.h
mkdir -p $SOURCES/arrow/compute && cp $FROM/arrow/compute/logical_type.h $SOURCES/arrow/compute/logical_type.h
mkdir -p $SOURCES/arrow && cp $FROM/arrow/visitor.cc $SOURCES/arrow/visitor.cc
mkdir -p $SOURCES/arrow/compute && cp $FROM/arrow/compute/context.h $SOURCES/arrow/compute/context.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/decimal.cc $SOURCES/arrow/util/decimal.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/count.cc $SOURCES/arrow/compute/kernels/count.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/bit_util.cc $SOURCES/arrow/util/bit_util.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/column_reader.cc $SOURCES/parquet/column_reader.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/sum.cc $SOURCES/arrow/compute/kernels/sum.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/int_util.h $SOURCES/arrow/util/int_util.h
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/diy-fp.h $SOURCES/arrow/vendored/double-conversion/diy-fp.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/compare.cc $SOURCES/arrow/compute/kernels/compare.cc
mkdir -p $SOURCES/arrow/io && cp $FROM/arrow/io/util_internal.h $SOURCES/arrow/io/util_internal.h
mkdir -p $SOURCES/parquet && cp $FROM/parquet/internal_file_encryptor.cc $SOURCES/parquet/internal_file_encryptor.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/schema_internal.h $SOURCES/parquet/schema_internal.h
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/builder_union.cc $SOURCES/arrow/array/builder_union.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/internal_file_decryptor.cc $SOURCES/parquet/internal_file_decryptor.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/encryption_internal.cc $SOURCES/parquet/encryption_internal.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/deprecated_io.cc $SOURCES/parquet/deprecated_io.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/basic_decimal.cc $SOURCES/arrow/util/basic_decimal.cc
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/strtod.cc $SOURCES/arrow/vendored/double-conversion/strtod.cc
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/ieee.h $SOURCES/arrow/vendored/double-conversion/ieee.h
mkdir -p $SOURCES/arrow/vendored && cp $FROM/arrow/vendored/datetime.h $SOURCES/arrow/vendored/datetime.h
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/diff.cc $SOURCES/arrow/array/diff.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/int_util.cc $SOURCES/arrow/util/int_util.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/encoding.cc $SOURCES/parquet/encoding.cc
mkdir -p $SOURCES/arrow/io && cp $FROM/arrow/io/memory.cc $SOURCES/arrow/io/memory.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/count.h $SOURCES/arrow/compute/kernels/count.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/take_internal.h $SOURCES/arrow/compute/kernels/take_internal.h
mkdir -p $SOURCES/arrow/io && cp $FROM/arrow/io/interfaces.cc $SOURCES/arrow/io/interfaces.cc
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/builder_base.cc $SOURCES/arrow/array/builder_base.cc
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/builder_nested.cc $SOURCES/arrow/array/builder_nested.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/column_writer.cc $SOURCES/parquet/column_writer.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/range.h $SOURCES/arrow/util/range.h
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/fixed-dtoa.h $SOURCES/arrow/vendored/double-conversion/fixed-dtoa.h
mkdir -p $SOURCES/parquet && cp $FROM/parquet/metadata.cc $SOURCES/parquet/metadata.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/cpu_info.h $SOURCES/arrow/util/cpu_info.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/bpacking.h $SOURCES/arrow/util/bpacking.h
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/strtod.h $SOURCES/arrow/vendored/double-conversion/strtod.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/utf8.h $SOURCES/arrow/util/utf8.h
mkdir -p $SOURCES/arrow/vendored/datetime && cp $FROM/arrow/vendored/datetime/tz.h $SOURCES/arrow/vendored/datetime/tz.h
mkdir -p $SOURCES/arrow && cp $FROM/arrow/sparse_tensor.cc $SOURCES/arrow/sparse_tensor.cc
mkdir -p $SOURCES/arrow && cp $FROM/arrow/extension_type.cc $SOURCES/arrow/extension_type.cc
mkdir -p $SOURCES/arrow/compute && cp $FROM/arrow/compute/context.cc $SOURCES/arrow/compute/context.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/sum.h $SOURCES/arrow/compute/kernels/sum.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/cast.cc $SOURCES/arrow/compute/kernels/cast.cc
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/builder_adaptive.cc $SOURCES/arrow/array/builder_adaptive.cc
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/double-conversion.h $SOURCES/arrow/vendored/double-conversion/double-conversion.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/parsing.h $SOURCES/arrow/util/parsing.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/formatting.cc $SOURCES/arrow/util/formatting.cc
mkdir -p $SOURCES/arrow/compute && cp $FROM/arrow/compute/expression.cc $SOURCES/arrow/compute/expression.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/column_scanner.cc $SOURCES/parquet/column_scanner.cc
mkdir -p $SOURCES/arrow && cp $FROM/arrow/tensor.cc $SOURCES/arrow/tensor.cc
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/concatenate.cc $SOURCES/arrow/array/concatenate.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/sort_to_indices.h $SOURCES/arrow/compute/kernels/sort_to_indices.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/compression_snappy.h $SOURCES/arrow/util/compression_snappy.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/boolean.cc $SOURCES/arrow/compute/kernels/boolean.cc
mkdir -p $SOURCES/arrow && cp $FROM/arrow/status.cc $SOURCES/arrow/status.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/iterator.h $SOURCES/arrow/util/iterator.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/boolean.h $SOURCES/arrow/compute/kernels/boolean.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/sort_to_indices.cc $SOURCES/arrow/compute/kernels/sort_to_indices.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/parsing.cc $SOURCES/arrow/util/parsing.cc
mkdir -p $SOURCES/arrow/compute && cp $FROM/arrow/compute/api.h $SOURCES/arrow/compute/api.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/utf8.cc $SOURCES/arrow/util/utf8.cc
mkdir -p $SOURCES/arrow && cp $FROM/arrow/compare.cc $SOURCES/arrow/compare.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/aggregate.cc $SOURCES/arrow/compute/kernels/aggregate.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/filter.h $SOURCES/arrow/compute/kernels/filter.h
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/builder_dict.cc $SOURCES/arrow/array/builder_dict.cc
mkdir -p $SOURCES/arrow && cp $FROM/arrow/memory_pool.cc $SOURCES/arrow/memory_pool.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/compare.h $SOURCES/arrow/compute/kernels/compare.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/double_conversion.h $SOURCES/arrow/util/double_conversion.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/hash.cc $SOURCES/arrow/compute/kernels/hash.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/atomic_shared_ptr.h $SOURCES/arrow/util/atomic_shared_ptr.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/cast.h $SOURCES/arrow/compute/kernels/cast.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/string_builder.cc $SOURCES/arrow/util/string_builder.cc
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/builder_binary.cc $SOURCES/arrow/array/builder_binary.cc
mkdir -p $SOURCES/arrow/io && cp $FROM/arrow/io/mman.h $SOURCES/arrow/io/mman.h
mkdir -p $SOURCES/parquet && cp $FROM/parquet/properties.cc $SOURCES/parquet/properties.cc
mkdir -p $SOURCES/arrow/compute && cp $FROM/arrow/compute/operation.h $SOURCES/arrow/compute/operation.h
mkdir -p $SOURCES/parquet && cp $FROM/parquet/types.cc $SOURCES/parquet/types.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/statistics.cc $SOURCES/parquet/statistics.cc
mkdir -p $SOURCES/arrow/io && cp $FROM/arrow/io/buffered.cc $SOURCES/arrow/io/buffered.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/schema.cc $SOURCES/parquet/schema.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/key_value_metadata.cc $SOURCES/arrow/util/key_value_metadata.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/util_internal.h $SOURCES/arrow/compute/kernels/util_internal.h
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/builder_primitive.cc $SOURCES/arrow/array/builder_primitive.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/make_unique.h $SOURCES/arrow/util/make_unique.h
mkdir -p $SOURCES/arrow/vendored && cp $FROM/arrow/vendored/xxhash.h $SOURCES/arrow/vendored/xxhash.h
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/diy-fp.cc $SOURCES/arrow/vendored/double-conversion/diy-fp.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/mean.cc $SOURCES/arrow/compute/kernels/mean.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/hashing.h $SOURCES/arrow/util/hashing.h
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/bignum-dtoa.cc $SOURCES/arrow/vendored/double-conversion/bignum-dtoa.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/take.cc $SOURCES/arrow/compute/kernels/take.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/column_page.h $SOURCES/parquet/column_page.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/string.cc $SOURCES/arrow/util/string.cc
mkdir -p $SOURCES/parquet && cp $FROM/parquet/encryption.cc $SOURCES/parquet/encryption.cc
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/fast-dtoa.cc $SOURCES/arrow/vendored/double-conversion/fast-dtoa.cc
mkdir -p $SOURCES/arrow/compute && cp $FROM/arrow/compute/expression.h $SOURCES/arrow/compute/expression.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/align_util.h $SOURCES/arrow/util/align_util.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/thread_pool.h $SOURCES/arrow/util/thread_pool.h
mkdir -p $SOURCES/arrow/vendored/xxhash && cp $FROM/arrow/vendored/xxhash/xxh3.h $SOURCES/arrow/vendored/xxhash/xxh3.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/isin.h $SOURCES/arrow/compute/kernels/isin.h
mkdir -p $SOURCES/arrow/array && cp $FROM/arrow/array/dict_internal.cc $SOURCES/arrow/array/dict_internal.cc
mkdir -p $SOURCES/arrow/vendored/datetime && cp $FROM/arrow/vendored/datetime/date.h $SOURCES/arrow/vendored/datetime/date.h
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/cached-powers.cc $SOURCES/arrow/vendored/double-conversion/cached-powers.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/hash.h $SOURCES/arrow/compute/kernels/hash.h
mkdir -p $SOURCES/arrow/io && cp $FROM/arrow/io/file.cc $SOURCES/arrow/io/file.cc
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/bignum.cc $SOURCES/arrow/vendored/double-conversion/bignum.cc
mkdir -p $SOURCES/arrow/compute && cp $FROM/arrow/compute/type_fwd.h $SOURCES/arrow/compute/type_fwd.h
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/utils.h $SOURCES/arrow/vendored/double-conversion/utils.h
mkdir -p $SOURCES/arrow/compute/kernels/generated && cp $FROM/arrow/compute/kernels/generated/cast_codegen_internal.h $SOURCES/arrow/compute/kernels/generated/cast_codegen_internal.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/filter.cc $SOURCES/arrow/compute/kernels/filter.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/cpu_info.cc $SOURCES/arrow/util/cpu_info.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/rle_encoding.h $SOURCES/arrow/util/rle_encoding.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/compression_snappy.cc $SOURCES/arrow/util/compression_snappy.cc
mkdir -p $SOURCES/arrow/vendored/xxhash && cp $FROM/arrow/vendored/xxhash/xxhash.h $SOURCES/arrow/vendored/xxhash/xxhash.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/logging.cc $SOURCES/arrow/util/logging.cc
mkdir -p $SOURCES/arrow/vendored/xxhash && cp $FROM/arrow/vendored/xxhash/xxhash.c $SOURCES/arrow/vendored/xxhash/xxhash.c
mkdir -p $SOURCES/arrow && cp $FROM/arrow/result.cc $SOURCES/arrow/result.cc
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/formatting.h $SOURCES/arrow/util/formatting.h
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/isin.cc $SOURCES/arrow/compute/kernels/isin.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/mean.h $SOURCES/arrow/compute/kernels/mean.h
mkdir -p $SOURCES/arrow && cp $FROM/arrow/stl.h $SOURCES/arrow/stl.h
mkdir -p $SOURCES/arrow && cp $FROM/arrow/pretty_print.cc $SOURCES/arrow/pretty_print.cc
mkdir -p $SOURCES/arrow && cp $FROM/arrow/scalar.cc $SOURCES/arrow/scalar.cc
mkdir -p $SOURCES/arrow/vendored/datetime && cp $FROM/arrow/vendored/datetime/tz_private.h $SOURCES/arrow/vendored/datetime/tz_private.h
mkdir -p $SOURCES/arrow/util && cp $FROM/arrow/util/compression.cc $SOURCES/arrow/util/compression.cc
mkdir -p $SOURCES/arrow/compute/kernels && cp $FROM/arrow/compute/kernels/take.h $SOURCES/arrow/compute/kernels/take.h
mkdir -p $SOURCES/arrow/compute && cp $FROM/arrow/compute/logical_type.cc $SOURCES/arrow/compute/logical_type.cc
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/fixed-dtoa.cc $SOURCES/arrow/vendored/double-conversion/fixed-dtoa.cc
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/cached-powers.h $SOURCES/arrow/vendored/double-conversion/cached-powers.h
mkdir -p $SOURCES/parquet && cp $FROM/parquet/encoding.h $SOURCES/parquet/encoding.h
mkdir -p $SOURCES/arrow/vendored/double-conversion && cp $FROM/arrow/vendored/double-conversion/double-conversion.cc $SOURCES/arrow/vendored/double-conversion/double-conversion.cc
mkdir -p $HEADERS/arrow/array && cp $FROM/arrow/array/builder_adaptive.h $HEADERS/arrow/array/builder_adaptive.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/column_writer.h $HEADERS/parquet/column_writer.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/file_writer.h $HEADERS/parquet/file_writer.h
mkdir -p $HEADERS/arrow/compute && cp $FROM/arrow/compute/kernel.h $HEADERS/arrow/compute/kernel.h
mkdir -p $HEADERS/arrow/io && cp $FROM/arrow/io/memory.h $HEADERS/arrow/io/memory.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/pretty_print.h $HEADERS/arrow/pretty_print.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/encryption.h $HEADERS/parquet/encryption.h
mkdir -p $HEADERS/arrow/array && cp $FROM/arrow/array/builder_primitive.h $HEADERS/arrow/array/builder_primitive.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/column_reader.h $HEADERS/parquet/column_reader.h
mkdir -p $HEADERS/arrow/io && cp $FROM/arrow/io/buffered.h $HEADERS/arrow/io/buffered.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/statistics.h $HEADERS/parquet/statistics.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/encryption_internal.h $HEADERS/parquet/encryption_internal.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/file_reader.h $HEADERS/parquet/file_reader.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/windows_compatibility.h $HEADERS/arrow/util/windows_compatibility.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/io.h $HEADERS/parquet/io.h
mkdir -p $HEADERS/arrow/array && cp $FROM/arrow/array/concatenate.h $HEADERS/arrow/array/concatenate.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/type_traits.h $HEADERS/arrow/util/type_traits.h
mkdir -p $HEADERS/arrow/io && cp $FROM/arrow/io/concurrency.h $HEADERS/arrow/io/concurrency.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/scalar.h $HEADERS/arrow/scalar.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/properties.h $HEADERS/parquet/properties.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/metadata.h $HEADERS/parquet/metadata.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/string_view.h $HEADERS/arrow/util/string_view.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/buffer.h $HEADERS/arrow/buffer.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/internal_file_encryptor.h $HEADERS/parquet/internal_file_encryptor.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/compression.h $HEADERS/arrow/util/compression.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/column_scanner.h $HEADERS/parquet/column_scanner.h
mkdir -p $HEADERS/arrow/vendored && cp $FROM/arrow/vendored/string_view.hpp $HEADERS/arrow/vendored/string_view.hpp
mkdir -p $HEADERS/parquet && cp $FROM/parquet/platform.h $HEADERS/parquet/platform.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/macros.h $HEADERS/arrow/util/macros.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/variant.h $HEADERS/arrow/util/variant.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/deprecated_io.h $HEADERS/parquet/deprecated_io.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/schema.h $HEADERS/parquet/schema.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/bit_util.h $HEADERS/arrow/util/bit_util.h
mkdir -p $HEADERS/arrow/array && cp $FROM/arrow/array/builder_base.h $HEADERS/arrow/array/builder_base.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/type.h $HEADERS/arrow/type.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/stl.h $HEADERS/arrow/util/stl.h
mkdir -p $HEADERS/arrow/array && cp $FROM/arrow/array/builder_decimal.h $HEADERS/arrow/array/builder_decimal.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/string_builder.h $HEADERS/arrow/util/string_builder.h
mkdir -p $HEADERS/arrow/io && cp $FROM/arrow/io/interfaces.h $HEADERS/arrow/io/interfaces.h
mkdir -p $HEADERS/arrow/array && cp $FROM/arrow/array/builder_dict.h $HEADERS/arrow/array/builder_dict.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/memory.h $HEADERS/arrow/util/memory.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/functional.h $HEADERS/arrow/util/functional.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/compare.h $HEADERS/arrow/compare.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/internal_file_decryptor.h $HEADERS/parquet/internal_file_decryptor.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/logging.h $HEADERS/arrow/util/logging.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/status.h $HEADERS/arrow/status.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/type_traits.h $HEADERS/arrow/type_traits.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/result.h $HEADERS/arrow/result.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/visitor.h $HEADERS/arrow/visitor.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/table.h $HEADERS/arrow/table.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/checked_cast.h $HEADERS/arrow/util/checked_cast.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/types.h $HEADERS/parquet/types.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/visibility.h $HEADERS/arrow/util/visibility.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/basic_decimal.h $HEADERS/arrow/util/basic_decimal.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/exception.h $HEADERS/parquet/exception.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/extension_type.h $HEADERS/arrow/extension_type.h
mkdir -p $HEADERS/parquet && cp $FROM/parquet/thrift_internal.h $HEADERS/parquet/thrift_internal.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/builder.h $HEADERS/arrow/builder.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/compare.h $HEADERS/arrow/util/compare.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/array.h $HEADERS/arrow/array.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/ubsan.h $HEADERS/arrow/util/ubsan.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/key_value_metadata.h $HEADERS/arrow/util/key_value_metadata.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/type_fwd.h $HEADERS/arrow/type_fwd.h
mkdir -p $HEADERS/arrow/array && cp $FROM/arrow/array/builder_time.h $HEADERS/arrow/array/builder_time.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/string.h $HEADERS/arrow/util/string.h
mkdir -p $HEADERS/arrow/io && cp $FROM/arrow/io/file.h $HEADERS/arrow/io/file.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/visitor_inline.h $HEADERS/arrow/visitor_inline.h
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/decimal.h $HEADERS/arrow/util/decimal.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/memory_pool.h $HEADERS/arrow/memory_pool.h
mkdir -p $HEADERS/arrow/array && cp $FROM/arrow/array/builder_nested.h $HEADERS/arrow/array/builder_nested.h
mkdir -p $HEADERS/arrow/array && cp $FROM/arrow/array/builder_binary.h $HEADERS/arrow/array/builder_binary.h
mkdir -p $HEADERS/arrow/vendored && cp $FROM/arrow/vendored/variant.hpp $HEADERS/arrow/vendored/variant.hpp
mkdir -p $HEADERS/arrow/util && cp $FROM/arrow/util/io_util.h $HEADERS/arrow/util/io_util.h
mkdir -p $HEADERS/arrow/array && cp $FROM/arrow/array/builder_union.h $HEADERS/arrow/array/builder_union.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/buffer_builder.h $HEADERS/arrow/buffer_builder.h
mkdir -p $HEADERS/arrow && cp $FROM/arrow/record_batch.h $HEADERS/arrow/record_batch.h
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_adaptive.h"/#include <seastar\/parquet\/arrow\/array\/builder_adaptive.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_adaptive.h"/#include <seastar\/parquet\/arrow\/array\/builder_adaptive.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/column_writer.h"/#include <seastar\/parquet\/parquet\/column_writer.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/column_writer.h"/#include <seastar\/parquet\/parquet\/column_writer.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/file_writer.h"/#include <seastar\/parquet\/parquet\/file_writer.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/file_writer.h"/#include <seastar\/parquet\/parquet\/file_writer.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/compute\/kernel.h"/#include <seastar\/parquet\/arrow\/compute\/kernel.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/compute\/kernel.h"/#include <seastar\/parquet\/arrow\/compute\/kernel.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/io\/memory.h"/#include <seastar\/parquet\/arrow\/io\/memory.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/io\/memory.h"/#include <seastar\/parquet\/arrow\/io\/memory.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/pretty_print.h"/#include <seastar\/parquet\/arrow\/pretty_print.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/pretty_print.h"/#include <seastar\/parquet\/arrow\/pretty_print.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/encryption.h"/#include <seastar\/parquet\/parquet\/encryption.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/encryption.h"/#include <seastar\/parquet\/parquet\/encryption.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_primitive.h"/#include <seastar\/parquet\/arrow\/array\/builder_primitive.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_primitive.h"/#include <seastar\/parquet\/arrow\/array\/builder_primitive.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/column_reader.h"/#include <seastar\/parquet\/parquet\/column_reader.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/column_reader.h"/#include <seastar\/parquet\/parquet\/column_reader.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/io\/buffered.h"/#include <seastar\/parquet\/arrow\/io\/buffered.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/io\/buffered.h"/#include <seastar\/parquet\/arrow\/io\/buffered.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/statistics.h"/#include <seastar\/parquet\/parquet\/statistics.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/statistics.h"/#include <seastar\/parquet\/parquet\/statistics.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/encryption_internal.h"/#include <seastar\/parquet\/parquet\/encryption_internal.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/encryption_internal.h"/#include <seastar\/parquet\/parquet\/encryption_internal.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/file_reader.h"/#include <seastar\/parquet\/parquet\/file_reader.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/file_reader.h"/#include <seastar\/parquet\/parquet\/file_reader.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/windows_compatibility.h"/#include <seastar\/parquet\/arrow\/util\/windows_compatibility.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/windows_compatibility.h"/#include <seastar\/parquet\/arrow\/util\/windows_compatibility.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/io.h"/#include <seastar\/parquet\/parquet\/io.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/io.h"/#include <seastar\/parquet\/parquet\/io.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/concatenate.h"/#include <seastar\/parquet\/arrow\/array\/concatenate.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/concatenate.h"/#include <seastar\/parquet\/arrow\/array\/concatenate.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/type_traits.h"/#include <seastar\/parquet\/arrow\/util\/type_traits.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/type_traits.h"/#include <seastar\/parquet\/arrow\/util\/type_traits.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/io\/concurrency.h"/#include <seastar\/parquet\/arrow\/io\/concurrency.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/io\/concurrency.h"/#include <seastar\/parquet\/arrow\/io\/concurrency.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/scalar.h"/#include <seastar\/parquet\/arrow\/scalar.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/scalar.h"/#include <seastar\/parquet\/arrow\/scalar.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/properties.h"/#include <seastar\/parquet\/parquet\/properties.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/properties.h"/#include <seastar\/parquet\/parquet\/properties.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/metadata.h"/#include <seastar\/parquet\/parquet\/metadata.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/metadata.h"/#include <seastar\/parquet\/parquet\/metadata.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/string_view.h"/#include <seastar\/parquet\/arrow\/util\/string_view.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/string_view.h"/#include <seastar\/parquet\/arrow\/util\/string_view.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/buffer.h"/#include <seastar\/parquet\/arrow\/buffer.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/buffer.h"/#include <seastar\/parquet\/arrow\/buffer.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/internal_file_encryptor.h"/#include <seastar\/parquet\/parquet\/internal_file_encryptor.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/internal_file_encryptor.h"/#include <seastar\/parquet\/parquet\/internal_file_encryptor.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/compression.h"/#include <seastar\/parquet\/arrow\/util\/compression.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/compression.h"/#include <seastar\/parquet\/arrow\/util\/compression.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/column_scanner.h"/#include <seastar\/parquet\/parquet\/column_scanner.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/column_scanner.h"/#include <seastar\/parquet\/parquet\/column_scanner.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/vendored\/string_view.hpp"/#include <seastar\/parquet\/arrow\/vendored\/string_view.hpp>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/vendored\/string_view.hpp"/#include <seastar\/parquet\/arrow\/vendored\/string_view.hpp>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/platform.h"/#include <seastar\/parquet\/parquet\/platform.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/platform.h"/#include <seastar\/parquet\/parquet\/platform.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/macros.h"/#include <seastar\/parquet\/arrow\/util\/macros.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/macros.h"/#include <seastar\/parquet\/arrow\/util\/macros.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/variant.h"/#include <seastar\/parquet\/arrow\/util\/variant.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/variant.h"/#include <seastar\/parquet\/arrow\/util\/variant.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/deprecated_io.h"/#include <seastar\/parquet\/parquet\/deprecated_io.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/deprecated_io.h"/#include <seastar\/parquet\/parquet\/deprecated_io.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/schema.h"/#include <seastar\/parquet\/parquet\/schema.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/schema.h"/#include <seastar\/parquet\/parquet\/schema.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/bit_util.h"/#include <seastar\/parquet\/arrow\/util\/bit_util.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/bit_util.h"/#include <seastar\/parquet\/arrow\/util\/bit_util.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_base.h"/#include <seastar\/parquet\/arrow\/array\/builder_base.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_base.h"/#include <seastar\/parquet\/arrow\/array\/builder_base.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/type.h"/#include <seastar\/parquet\/arrow\/type.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/type.h"/#include <seastar\/parquet\/arrow\/type.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/stl.h"/#include <seastar\/parquet\/arrow\/util\/stl.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/stl.h"/#include <seastar\/parquet\/arrow\/util\/stl.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_decimal.h"/#include <seastar\/parquet\/arrow\/array\/builder_decimal.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_decimal.h"/#include <seastar\/parquet\/arrow\/array\/builder_decimal.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/string_builder.h"/#include <seastar\/parquet\/arrow\/util\/string_builder.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/string_builder.h"/#include <seastar\/parquet\/arrow\/util\/string_builder.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/io\/interfaces.h"/#include <seastar\/parquet\/arrow\/io\/interfaces.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/io\/interfaces.h"/#include <seastar\/parquet\/arrow\/io\/interfaces.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_dict.h"/#include <seastar\/parquet\/arrow\/array\/builder_dict.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_dict.h"/#include <seastar\/parquet\/arrow\/array\/builder_dict.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/memory.h"/#include <seastar\/parquet\/arrow\/util\/memory.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/memory.h"/#include <seastar\/parquet\/arrow\/util\/memory.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/functional.h"/#include <seastar\/parquet\/arrow\/util\/functional.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/functional.h"/#include <seastar\/parquet\/arrow\/util\/functional.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/compare.h"/#include <seastar\/parquet\/arrow\/compare.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/compare.h"/#include <seastar\/parquet\/arrow\/compare.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/internal_file_decryptor.h"/#include <seastar\/parquet\/parquet\/internal_file_decryptor.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/internal_file_decryptor.h"/#include <seastar\/parquet\/parquet\/internal_file_decryptor.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/logging.h"/#include <seastar\/parquet\/arrow\/util\/logging.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/logging.h"/#include <seastar\/parquet\/arrow\/util\/logging.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/status.h"/#include <seastar\/parquet\/arrow\/status.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/status.h"/#include <seastar\/parquet\/arrow\/status.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/type_traits.h"/#include <seastar\/parquet\/arrow\/type_traits.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/type_traits.h"/#include <seastar\/parquet\/arrow\/type_traits.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/result.h"/#include <seastar\/parquet\/arrow\/result.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/result.h"/#include <seastar\/parquet\/arrow\/result.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/visitor.h"/#include <seastar\/parquet\/arrow\/visitor.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/visitor.h"/#include <seastar\/parquet\/arrow\/visitor.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/table.h"/#include <seastar\/parquet\/arrow\/table.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/table.h"/#include <seastar\/parquet\/arrow\/table.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/checked_cast.h"/#include <seastar\/parquet\/arrow\/util\/checked_cast.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/checked_cast.h"/#include <seastar\/parquet\/arrow\/util\/checked_cast.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/types.h"/#include <seastar\/parquet\/parquet\/types.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/types.h"/#include <seastar\/parquet\/parquet\/types.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/visibility.h"/#include <seastar\/parquet\/arrow\/util\/visibility.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/visibility.h"/#include <seastar\/parquet\/arrow\/util\/visibility.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/basic_decimal.h"/#include <seastar\/parquet\/arrow\/util\/basic_decimal.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/basic_decimal.h"/#include <seastar\/parquet\/arrow\/util\/basic_decimal.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/exception.h"/#include <seastar\/parquet\/parquet\/exception.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/exception.h"/#include <seastar\/parquet\/parquet\/exception.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/extension_type.h"/#include <seastar\/parquet\/arrow\/extension_type.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/extension_type.h"/#include <seastar\/parquet\/arrow\/extension_type.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/thrift_internal.h"/#include <seastar\/parquet\/parquet\/thrift_internal.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\/thrift_internal.h"/#include <seastar\/parquet\/parquet\/thrift_internal.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/builder.h"/#include <seastar\/parquet\/arrow\/builder.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/builder.h"/#include <seastar\/parquet\/arrow\/builder.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/compare.h"/#include <seastar\/parquet\/arrow\/util\/compare.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/compare.h"/#include <seastar\/parquet\/arrow\/util\/compare.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array.h"/#include <seastar\/parquet\/arrow\/array.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array.h"/#include <seastar\/parquet\/arrow\/array.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/ubsan.h"/#include <seastar\/parquet\/arrow\/util\/ubsan.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/ubsan.h"/#include <seastar\/parquet\/arrow\/util\/ubsan.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/key_value_metadata.h"/#include <seastar\/parquet\/arrow\/util\/key_value_metadata.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/key_value_metadata.h"/#include <seastar\/parquet\/arrow\/util\/key_value_metadata.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/type_fwd.h"/#include <seastar\/parquet\/arrow\/type_fwd.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/type_fwd.h"/#include <seastar\/parquet\/arrow\/type_fwd.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_time.h"/#include <seastar\/parquet\/arrow\/array\/builder_time.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_time.h"/#include <seastar\/parquet\/arrow\/array\/builder_time.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/string.h"/#include <seastar\/parquet\/arrow\/util\/string.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/string.h"/#include <seastar\/parquet\/arrow\/util\/string.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/io\/file.h"/#include <seastar\/parquet\/arrow\/io\/file.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/io\/file.h"/#include <seastar\/parquet\/arrow\/io\/file.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/visitor_inline.h"/#include <seastar\/parquet\/arrow\/visitor_inline.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/visitor_inline.h"/#include <seastar\/parquet\/arrow\/visitor_inline.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/decimal.h"/#include <seastar\/parquet\/arrow\/util\/decimal.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/decimal.h"/#include <seastar\/parquet\/arrow\/util\/decimal.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/memory_pool.h"/#include <seastar\/parquet\/arrow\/memory_pool.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/memory_pool.h"/#include <seastar\/parquet\/arrow\/memory_pool.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_nested.h"/#include <seastar\/parquet\/arrow\/array\/builder_nested.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_nested.h"/#include <seastar\/parquet\/arrow\/array\/builder_nested.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_binary.h"/#include <seastar\/parquet\/arrow\/array\/builder_binary.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_binary.h"/#include <seastar\/parquet\/arrow\/array\/builder_binary.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/vendored\/variant.hpp"/#include <seastar\/parquet\/arrow\/vendored\/variant.hpp>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/vendored\/variant.hpp"/#include <seastar\/parquet\/arrow\/vendored\/variant.hpp>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/io_util.h"/#include <seastar\/parquet\/arrow\/util\/io_util.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/util\/io_util.h"/#include <seastar\/parquet\/arrow\/util\/io_util.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_union.h"/#include <seastar\/parquet\/arrow\/array\/builder_union.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/array\/builder_union.h"/#include <seastar\/parquet\/arrow\/array\/builder_union.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/buffer_builder.h"/#include <seastar\/parquet\/arrow\/buffer_builder.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/buffer_builder.h"/#include <seastar\/parquet\/arrow\/buffer_builder.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/record_batch.h"/#include <seastar\/parquet\/arrow\/record_batch.h>/g' FILE
find $HEADERS -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\/record_batch.h"/#include <seastar\/parquet\/arrow\/record_batch.h>/g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "parquet\//#include "parquet\/parquet\//g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "arrow\//#include "parquet\/arrow\//g' FILE
find $SOURCES -type f | xargs -n1 -IFILE sed -i '' -e 's/#include "generated\//#include "parquet\/generated\//g' FILE
