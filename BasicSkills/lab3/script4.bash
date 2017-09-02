#!/bin/bash
echo " " > temp.log
for i in $(ps -A -o pid| tail -n +2 | sed "s/^ *//" )
	do
	echo "$i:$(head -n 1 /proc/$i/statm  | gawk '{print $2 - $3 }')" >> temp.log
	done
sort -r -t":" -n -k2 temp.log > file4.log
exit 0
