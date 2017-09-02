#!/bin/bash
grep -E -r "*" /var/log/ | grep -E -c "^[[:alnum:]\/]+\.log"
