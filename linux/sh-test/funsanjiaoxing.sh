#!/bin/bash

function print (){
	for ((i=1; i<=$2; i++))
	do
		echo -n "$1 "
		for ((j=2; j<=i; j++))
		do
			if [ $j -eq $i ]
			then
				echo -n "$1 "
			else
				if [ $i -eq $2 ]
				then
					echo -n "$1 "
				else
					echo -n "  "
				fi
			fi
		done
		echo
	done
}

read -p "Please input char: " char
read -p "Please input number: " number

print "$char" $number

