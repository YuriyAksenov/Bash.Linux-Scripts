#!/bin/bash
result=1
mode="+"
echo "The start value of result is 1. Mode is +"
(tail -n 0 -f data.txt) |
while true; do
	read LINE;
	case $LINE in
		QUIT)
			echo "exit"
			killall tail
  			#kill script5.bash
			exit
			;;
		"+")
			echo "Mode is summary"
			echo "Enter number"
			mode="+"
			;;
		"*")
			echo "Mode is multiply"
			echo "Enter number"
			mode="*"
			;;
		[0-9]*)
			echo "Mode is $mode"
			str=$result
			let "result=result$mode$LINE"
			echo "Result: $str $mode $LINE = $result"
			;;
		*)
			echo "Error. Unknown command. Goodbuy!"
			#killall tail
			#exit
			;;
	esac
done

