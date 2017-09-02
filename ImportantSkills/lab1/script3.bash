#!/bin/bash
bigstr=""
str="p"
while [[ "$str" != "q" ]]
do
echo "Введите строку"
read str
bigstr="$bigstr""$str"
done

echo "$bigstr"

