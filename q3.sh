#!/bin/bash
read file
filesize=$(ls -lh $file | awk '{print  $5}')
echo "$file has a size of $filesize"
wc -l $file | awk '{ print "It has " $1 " lines" }'
wc -w $file | awk '{ print "It has " $1 " words" }'
let a=1
input="$file"
while IFS= read -r line
do
  echo $line > keval.txt
  words=$(wc -w < keval.txt)
  echo "Line No: $x - Count of Words: $words"
  let a++


  
done < "$input"
