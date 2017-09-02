#!/bin/bash
#grep -E -h -s "warning" temp | sed "s/warning/Warning: /" 

grep -E -h -s "\(WW\)" /var/log/Xorg.0.log | sed -E "s/\(WW\)/Warning:\ /" > /home/user/lab2/full.log
grep -E -h -s "\(II\)" /var/log/Xorg.0.log | sed -E "s/\(II\)/Information:\ /" >> /home/user/lab2/full.log
exit 0
