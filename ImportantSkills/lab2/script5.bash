#!/bin/bash
grep -E -h -s -r ".*" /etc/passwd | cut -d ':' -f1,3 | sort -t ":" -n -k2 | sed "s/:/ UID:/g"
