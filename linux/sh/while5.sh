#!/bin/bash


while true
do
	i=0
	while [ $i -lt 10 ]
	do
		i=$[$i + 1]

		if [ $i -eq 5 ]
		then
#			break;
			continue;
		fi
		echo -n "$i "
	done
done
echo
