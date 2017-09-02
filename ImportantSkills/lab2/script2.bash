#!/bin/bash
grep -E -r "info|warm" /var/log/ | sed -e "s/Info/Information/gi" -e "s/Running/Hello!!!!!/gi" > full.log
less full.log
