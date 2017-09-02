#!/bin/bash 
grep -E -s "*" /var/log/*.log | wc -l 
exit
