#!/bin/bash
grep -E -r -h -s -o -i "[[:alnum:]]+\@[[:alnum:]]+\.[[:alnum:]]+" /etc/ | sort | uniq > emails.lst
