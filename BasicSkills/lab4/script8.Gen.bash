#!/bin/bash
echo "Начать общение ? y/n"

while true; do
	read talk
	
	if (( "$talk" != "y" ))
	then
		exit 0;
	fi	
	echo "PRIVET" >> data.txt
(tail -n 0 -f data.txt) |
while true; do
	read LINE
	let "b=$LINE % 2"
	if (( "$b" == "0" ))
	then
		echo "$LINE четное"
	else
		echo "$LINE нечетное"
	fi
	echo "Продолжить общение ? y/n"
	read talk
	if (( "$talk" != "y" ))
	then 
		exit 0;
	fi

done
done
