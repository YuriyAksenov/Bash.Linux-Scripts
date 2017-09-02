#!/bin/bash
echo "" > file6.log
prePpid=-1
k=0
avg=0
sum=0
file=$(less /home/user/lab3/file5.log | tr -d " ")
for line in $file
do
	currPpid=$( echo "$line" | grep -oE "Parent_ProcessID=[[:digit:]]+" | grep -oE "[[:digit:]]+") 
	#echo "$line" | sed "s/:/ : /g" >> file6.log

	if [[ "$currPpid" == "$prePpid" ]]
	then 
		tempTime=$(echo "$line" | grep -oE "Average_Sleeping_Time=[[:digit:].]+" | grep -ohsE "([[:digit:].])+")
		sum=$(echo $sum $tempTime | awk '{printf "%f", $1+$2}')
		let "k=k+1"
		echo "$line" | sed "s/:/ : /g" >> file6.log
		prePpid=$currPpid
	else
		tempTime=$(echo "$line" | grep -oE "Average_Sleeping_Time=[[:digit:].]+" | grep -ohsE "([[:digit:].])+")

		if [[ "$k" == "0" ]]
		then 	
		#	echo "$line" | sed "s/:/ : /g" >> file6.log
			k=1
		fi
		avg=$( echo $sum $k | awk '{printf "%f", $1/$2 }')
		
		if [[ "$prePpid" -ne "-1" ]] 
		then
			echo "-----------------------------------" >> file6.log		
			echo "Average_Sleeping_Children_of_ParentID=$prePpid is $avg $sum $k" >> file6.log
			echo "------------------------------------" >> file6.log
		fi		
		echo "$line" | sed "s/:/ : /g" >> file6.log
		sum=$tempTime
		k=1
		prePpid=$currPpid
	fi
done

exit 0
