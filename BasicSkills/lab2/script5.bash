#!/bin/bash
cut  -d ':' -f 1,3 /etc/passwd | sort -t ':' -n  -k2  | sed "s/\:/\ UID\:/" 
exit
