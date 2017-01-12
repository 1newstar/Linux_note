#!/bin/bash

echo
echo -n "1 + 3 + 5 + ... + 99 = "

i=1
sum=0

while [ $i -lt 100 ]
do
	sum=$[$sum+$i]
	i=$[$i+2]
done
echo $sum
echo

i=1

while [ $i -lt 10 ]
do
	j=1
	while [ $j -le $i ]
	do
		if [ $[$j*$i] -ge 10 ]
		then
			echo -n "$j * $i = $[$j*$i]  "
		else
			echo -n "$j * $i = $[$j*$i]   "
		fi
		j=$[$j+1]
	done
	i=$[$i+1]
	echo
done

echo

N=9
i=1

while [ $i -le $N ]
do
#	echo -n "* "
	j=1
	while [ $j -lt $i ]
	do
		if [[ $j -gt $i || $j -eq 1 ]]
		then
			echo -n "* "
		else
			if [ $i -eq $N ]
			then
				echo -n "* "
			else
				echo -n "  "
			fi
		fi
		j=$[$j+1]
	done
	echo "* "
	i=$[$i+1]
done
echo
