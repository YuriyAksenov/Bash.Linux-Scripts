#!/bin/bash
echo "Hello!"
grep -o -E -h -s "[[:alnum:]_-.]+@[[:alpha:]]+\.[[:alpha:].]+" /etc/* | sort -u | tr "\n" "," > /home/user/lab2/emails.lst 
exit

