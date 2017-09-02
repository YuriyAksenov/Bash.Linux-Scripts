#!/bin/bash
#echo "* * * * * echo \"Hello\"" | crontab
echo "*/5 * * * 2 ~/lab4/script1.bash" | crontab
exit 0
