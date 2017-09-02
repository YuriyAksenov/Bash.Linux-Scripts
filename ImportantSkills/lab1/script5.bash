#!/bin/bash
b="0";
echo "введи номер пункта"
read b
echo "$b"
case "$b" in
"1" )
nano script.bash
;;
"2" )
links www.google.com
;;
"3" )
echo "exit"
;;
esac 
