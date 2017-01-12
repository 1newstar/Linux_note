#!/bin/bash


function pri(){
#	echo "\$1 = $1"
	for ((k = 0; k < $1; k++))
	do
		echo -n "$2 "
	done
}

pri 10 "*"
echo
pri 8 "#"
echo

echo "==============="
for ((i = 1; i <= 8; i++))
do
	if [ $i -eq 1 -o $i -eq 2 -o $i -eq 8 ]
	then
		pri $i "*"
	else
#		pri $i " "
		pri 1 "*"
		pri $[$i - 2] " "
		pri 1 "*"
	fi
	echo
done
echo "==============="
for ((i = 0; i < 8; i++))
do
	for ((j = 0; j <= i; j++))
	do
		if [ $i -eq 0 -o $i -eq 1 -o $i -eq 7 ]
		then
			echo -n "* "
#			pri $i "*"
		else
			if [ $j -eq 0 -o $j -eq $i ]
			then
				echo -n "* "
#				pri 1 "*"
			else
				echo -n "  "
#				pri $[$i - 2] " "
			fi
		fi
	done
	echo
#	read
done
