#!/bin/bash
ps -A  -o pid,command | grep " /sbin/" | sed "s/^ *//" | cut -f1 -d " " > file3.log
exit 0
