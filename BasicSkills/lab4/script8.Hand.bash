#!/bin/bash
(tail -n 0 -f data.txt) |
while true; do
	read LINE;
	echo "$RANDOM" >> data.txt
done
