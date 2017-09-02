#!/bin/bash
echo "" > temp.log
pid=$(ps -A -o pid | sed "s/^ *//" | tail -n +2)
for i in $pid
	do
	if [ -d /proc/$i/ ]
	then
		PIDtemp=$(grep -sh "^Pid" /proc/$i/status | grep -shoE "[[:digit:]]+")
		PPIDtemp=$(grep -sh "^PPid" /proc/$i/status | grep -shoE "[[:digit:]]+")
		AVGtemp=$(grep -sh "^avg_atom" /proc/$i/sched | grep -shoE "([[:digit:].])+")
		echo "ProcessID=+$PIDtemp+:Parent_ProcessID=+$PPIDtemp+:Average_Sleeping_Time=+$AVGtemp" >> temp.log
	fi
	done
sort -t"+" -n -k4 temp.log | sed "s/:/ : /g" | tr -d "+" > file5.log
exit 0

