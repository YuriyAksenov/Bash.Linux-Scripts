#!/bin/bash
ps -A -o user,pid,start | tail -n 5 | head -n 1
exit 0
