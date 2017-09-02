#!/bin/bash
i=0
a="$#"
if [[ "$#" -lt 10 ]]
then i=1
while [ i -le "$#" ]
do
temp="/$i"
echo "Parameter "i" - "$temp" "
let i+=1
done
fi 
exit
