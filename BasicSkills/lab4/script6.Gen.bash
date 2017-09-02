#!/bin/bash
while true; do
	read LINE
	#if [[ -n "$LINE" ]]
	#	then
	#	kill -VISFALSE $(cat .pid)
	#fi
	case $LINE in
		TERM)
			kill -SIGTERM $(cat .pid)
			;;
		QUIT)
			kill -SIGTERM $(cat .pid)
			exit
			;;
		*)
			:
			;;
	esac
done


