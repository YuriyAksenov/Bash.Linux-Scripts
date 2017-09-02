#!/bin/bash
man bash | tr "[[:upper:]]" "[[:lower:]]" | tr " " "\n" | tr -d [.,\(\)\\] | grep  "[[:alnum:]_-']\{4,\}" | sort | uniq -c | sort -nr | head -n 3 | tr -d "^\ [0-9]*"
exit
