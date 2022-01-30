for filename in $*
do
  if [ -f $filename ]
  then
    sort $filename | diff $filename - &>/dev/null
    if [ $? -eq 0 ]
    then
      echo "$filename is sorted"
    else
      echo "$filename is unsorted"
    fi
  else
    echo "is a directory"
  fi
done


