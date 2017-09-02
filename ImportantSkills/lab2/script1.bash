#!/bin/bash
grep -E -r -h -s "^ACPI.*" /var/log/ | grep -E -r -h -s "(\/.*\/)+" > errors/log

