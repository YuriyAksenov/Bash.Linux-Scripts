#!/bin/bash
#b=$(stat file | grep "Size" | cut -f1 | grep -Eo "([[:digit:]])+")

arr=("${arr[@]}" "Hello Hi")
arr=("${arr[@]}" "Hello Hi5")
for temp in "${arr[@]}"
do
	echo "$temp"
done

