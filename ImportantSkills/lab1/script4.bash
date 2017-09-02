#!/bin/bash
let count=0;
let num=1;
while [[ "$num"%2  -ne 0 ]]
do
echo "введите число"
read num
let count="$count"+1
done

echo "$count"
