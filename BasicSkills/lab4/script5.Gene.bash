#!/bin/bash
while true; do
	read LINE
	echo "$LINE" >> data.txt
	if [[ "$LINE" == "QUIT" ]]
		then
		exit
 	fi
done
exit 0
