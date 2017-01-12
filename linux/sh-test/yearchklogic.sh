#!/bin/bash

#判断是否是闰年
read -p "Pelase input a year num: " year

if [[ ($[$year%400] -eq 0) || (($[$year%4] -eq 0) && (! $[$year%100] -eq 0)) ]]
then
	echo "Yes"
else
	echo "No"
fi
