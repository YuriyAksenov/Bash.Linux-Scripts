#!/bin/bash
count=0
num=1
while [[ "$num" -ne 0 ]]
do
let count="$count"+1
echo "Enter the new even number " 
read num
let "num %= 2"
done
echo "Account of numbers = $count"
exit


