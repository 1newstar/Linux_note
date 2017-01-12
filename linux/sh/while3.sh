#!/bin/bash

clear
sum=0
i=1
while [ $i -lt 100 ]
do
	sum=$[$i + $sum]
	i=$[$i + 2]
done

echo "1 + 3 + 5 + ... + 99 = $sum"

i=1
while [ $i -le 9 ]
do
	j=1
	while [ $j -le $i ]
	do
		echo -n "$j X $i = $[$i * $j]  "
		j=$[$j + 1]
	done
	echo
	i=$[$i + 1]
done

clear
read -p "please input line : " line

i=1
while [ $i -le $line ]
do
	j=1
	while [ $j -le $i ]
	do
		if [ $i -eq 1 -o $i -eq 2 -o $i -eq $line ]
		then
			echo -n "* "
		else
			if [ $j -eq 1 -o $j -eq $i ]
			then
				echo -n "* "
			else
				echo -n "  "
			fi
		fi
		j=$[$j + 1]
	done
	echo
	i=$[$i + 1]
done














