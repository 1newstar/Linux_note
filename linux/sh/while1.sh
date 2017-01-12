#!/bin/bash

echo "for : "
for ((i = 1; i < 10; i++))
do
	echo -n "$i "
done
echo

echo "while : "

#init
i=1
#con
while [ $i -lt 10 ]
do
#body
	echo -n "$i "
#add
	i=$[$i + 1]
done
echo
