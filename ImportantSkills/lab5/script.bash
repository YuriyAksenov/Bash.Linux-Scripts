#!/bin/bash
ph=/home/user/lab5
#1---------------1--------------
cut -d ':' -f 1,3 /etc/passwd | sort -t: -k2 -n | sed 's/^/user /g ' | sed 's/:/ has id /g'  >  $ph/work5.log
echo -e "\n" >> $ph/work5.log
#2---------------2--------------
grep "root" /etc/shadow  | cut -d ':' -f 1,3  | sed 's/:/ password /g' >> $ph/work5.log
echo -e "\n" >> $ph/work5.log
#3---------------3--------------
cut -d: -f1 /etc/group | tr '\n' ',' >> $ph/work5.log
#4---------------4--------------
#В дирректории /etc/skel создаем файл
#5---------------5--------------
useradd -p $(openssl passwd -crypt 12345678) u1
#6---------------6--------------
groupadd g1
#7---------------7--------------
usermod -a -G g1 u1
#8---------------8--------------
id u1 >> $ph/work5.log
#9---------------9--------------
usermod -a -G g1 user
#10--------------10--------------
cut -d ':' -f 1,4 /etc/group | grep "g1" | sed 's/:/ contains: /g'
#11--------------11--------------
usermod -s /usr/bin/mc u1
#12--------------12--------------
useradd -p $(openssl passwd -crypt 87654321) u2
#13--------------13--------------
mkdir /home/test13
cp $ph/work5.log /home/test13/work5-1.log
cp $ph/work5.log /home/test13/work5-2.log
#14--------------14--------------
groupadd fortest13
usermod -a -G fortest13 u1
usermod -a -G fortest13 u2
chown -R u1 /home/test13
chgrp -R fortest13 /home/test13
chmod 2750 /home/test13 #rwx|r-x|---
chmod 2640 /home/test13/* #rw-|r--|---
usermod -s /bin/bash u1
#15--------------15--------------
mkdir /home/test15
chown -R u1 /home/test15
chmod 1777 /home/test15 #rwx|rwx|rwt
#16--------------16--------------
cp /bin/nano /home/test15
chown u1 /home/test15/nano
chmod 4777 /home/test15/nano
