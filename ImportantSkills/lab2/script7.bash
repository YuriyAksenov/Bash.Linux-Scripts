#!/bin/bash
man bash | grep -o -i "[[:alpha:]]\{4,\}" | sed "s/[[:upper:]]/[[:lower:]]/g" | sort | uniq -c | sort -nr | head -n3
