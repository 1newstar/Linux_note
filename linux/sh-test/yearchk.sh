#!/bin/bash
#输入一个年份，判断是否是闰年
#闰年：能被400整除或者能被4整除但不可以被100整除

read -p "Please input a year number:" year

if [ $year -gt 0 ]
then
	if [ $[$year % 400] -eq 0 ]
	then
		echo "Yes! [$year%100]"
	else
		if [ $[$year % 4] -eq 0 ]
		then
			if [ $[$year % 100] -ne 0 ]
			then
				echo "Yes! [$year%4]"
			else
				echo "No! [$year%100]"
			fi
		else
			echo "No! [$year%4]"
		fi
	fi
else
	echo "Wrong number, the year number shoud be positive!"
fi

