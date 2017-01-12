#!/bin/bash

read -p "please input year : " year

if [ $[$year % 400] -eq 0 ]
then
	echo "yes"
else
	if [ $[$year % 4] -eq 0 ]
	then
		if [ $[$year % 100] -ne 0 ]
		then
			echo "yes"
		else
			echo "no"
		fi
	else
		echo "no"
	fi
fi
