for filename in $*
do
  sort $filename | diff $filename - &>/dev/null
  if [ $? -eq 1 ]
  then
    cp $filename ${filename%.txt}.org.txt
    sort $filename -o $filename 
  fi
done

