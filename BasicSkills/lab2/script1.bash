#!/bin/bash
grep -E -h -s "^ACPI" /var/log/* > /home/user/lab2/errors.log
grep -E -h "(/[[:alnum:]_-])+" /home/user/lab2/errors.log
exit 0

