#!/bin/bash
temp=""
str=""
while [ "$temp" != "q" ]
do read temp
str="$str""$temp"
done

echo "$str"

exit
