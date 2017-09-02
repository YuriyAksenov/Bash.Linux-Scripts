#!/bin/bash
inter=$(grep -E -h  -r "^\#!+" /bin | uniq -c | sort | sed -e "s/[0-9]/\ /g" | head -n1 ) 
grep -E -r $inter /bin | tr ":" " " | cut -d ' ' -f1
echo "interpretator $inter"
