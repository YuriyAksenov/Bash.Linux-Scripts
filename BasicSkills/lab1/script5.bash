#!/bin/bash
echo "Menu"
echo "1 - call editor 'nano'"
echo "2 - call editor 'vim'"
echo "3 - call browser 'links'"
echo "4 - exit"

echo "Eter the point of the menu"
read point 
case "$point" in
1)
nano;;
2) 
vim;;
3)
links;;
4)
exit;;
esac
exit
