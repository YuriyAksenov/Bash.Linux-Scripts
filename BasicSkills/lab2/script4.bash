#!/bin/bash
temp=""
grep -E -s -h "\#!" /bin/* | uniq -c | sort -nr | sed "s/[0-9]*//g" | head -n 1 > temp
grep -E -s -H "^\#!/bin/$temp" /bin/* | sed  "s/\:\#!\/bin\/$temp//"
exit

