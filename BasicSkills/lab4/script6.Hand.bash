#!/bin/bash
echo $$ > .pid
A=1
MODE="rabota"
term ()
{
 MODE="ostanov"
}
trap 'term' SIGTERM
while true; do 
	case $MODE in
		"rabota")
			let "A=A+1"
			echo "$A"
			;;
		"ostanov")
			echo "Stopped by SIGTERM"
			exit
			;;
	esac
	sleep 1
	if [[ "$A" -eq 100 ]]
		then
		exit
	fi
done

