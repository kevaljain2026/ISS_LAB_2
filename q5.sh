#!/bin/bash
read str
len=${#str}
size=$(((len/2)+1))

for ((i=($len); i>=0; i--))
	do
	    reverse="$reverse${str:$i:1}"
	done

echo $reverse
ans=$(echo "$reverse" | tr "0-9a-z" "1-9a-z")
echo $ans
size=$(((len/2)+1))
for ((i=($len/2)-1; i>=0; i--))
	do
	    halfrev="$halfrev${str:$i:1}"
	done
for ((i=($len/2); i<len+1; i++))
	do
	    halfrev="$halfrev${str:$i:1}"
	done
echo $halfrev
