#!/bin/bash
echo $$ > .pid
A=1
MODE="+"
usr1 ()
{
	MODE="+"
}
usr2 ()
{
	MODE="*"
}
usr3 ()
{
	MODE="-"
}
STOP ()
{
	MODE="STOP"
}
trap 'usr1' USR1
trap 'usr2' USR2
trap 'usr3' SIGHUP
trap 'STOP' SIGTERM
while true; do
	temp=$A
	case $MODE in
		"+")	
			let "A=$A+2"
			echo "Result +: $temp + 2 = $A"
			;;
		"*")
			let "A=$A*2"
			echo "Result *: $temp * 2 = $A"
			;;
		"-")
			let "A=$A-2"
			echo "Result -: $temp - 2 = $A"
			;;
		STOP)
			echo "Stopped by SIGTERM"
			exit
			;;
	esac
	sleep 1
done
