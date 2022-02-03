for filename in $*
do
  if [ -f $filename ]
  then
    sort $filename | diff $filename - &>/dev/null
    if [ $? -eq 0 ]
    then
      echo "$filename is sorted"
    else
      echo "$filename is not sorted"
    fi
  else
    if [ -d $filename ]
    then
      echo "$filename is a directory"
    else
      echo "$filename does not exist"
    fi
  fi
done


