
for NUM in {1..18} ; do
  FILE=$(sed "${NUM}q;d" file_list.txt)
  pbcopy < "${HOME}/arrow/cpp/src/${FILE}"
  echo "Copied ${FILE}"
  read
done
