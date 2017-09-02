#!/bin/bash
ls /var/log/ > /home/user/lab2/list.txt
str=$(grep -Eo "[[:alnum:]]*con" /home/user/lab2/list.txt)
for temp in $str 	
	do 
	let "x=$(expr length $temp)-2" 
	echo $x 
	done 
exit 0

