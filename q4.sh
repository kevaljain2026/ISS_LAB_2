#!/bin/bash
read hint
hint=$(echo $hint | tr "," " ") 
declare -a rep
rep=($(echo $hint ))
n=${#rep[@]}
for ((i = 0; i<n; i++))
do
    for((j = 0; j<n-i-1; j++))
    do
        if [ ${rep[j]} -gt ${rep[$((j+1))]} ]
        then
            temp=${rep[j]}
            rep[$j]=${rep[$((j+1))]}  
            rep[$((j+1))]=$temp
        fi
    done
done
echo ${rep[*]}

