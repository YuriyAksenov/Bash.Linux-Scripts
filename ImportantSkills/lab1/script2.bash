#!/bin/bash
max=0
if [[ "$1" -ge "$2" ]] 
then max="$1"
else max="$2"
fi
if [[ "$3" -gt "$max" ]]
then max="$3"
fi
echo "$max"
