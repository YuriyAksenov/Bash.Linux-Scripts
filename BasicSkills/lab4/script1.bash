#!/bin/bash
mkdir ~/lab4/test && (echo "catalog test was created successfully" >> ~/report; echo " " > ./test/$(date +%F_%T)) 
ping "www.net_nikogo.ru" || echo "Exception: HOST is disable" >> ~/report 

