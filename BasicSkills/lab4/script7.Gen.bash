#!/bin/bash
while true; do
	read "LINE"
	case "$LINE" in
		"+")
			kill -USR1 $(cat .pid)
			;;
		"*")
			kill -USR2 $(cat .pid)
			;;
		"-") 	
			kill -SIGHUP $(cat .pid)
			;;
		"TERM")
			kill -SIGTERM $(cat .pid)
			;;
	esac
done
