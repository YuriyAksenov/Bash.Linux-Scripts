#!/bin/bash
ps -u user | tail -n +2 | head -n -3 | wc -l        
ps -u user o pid,command | sed "s/^ *//" | sed "s/ /:/" > file.log  
exit 0
