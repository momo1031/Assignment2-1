#!/bin/bash

i=0
declare -a alist
while [ 1 ]
do
read -p "Enter a new word :" word

if [ "$word" = "quit" ]; then
exit 1
elif [ "$word" = "list" ]; then
echo ${alist[*]}
else
alist+=($word)
let i=$i+1
echo "Length: $i"
fi
done
