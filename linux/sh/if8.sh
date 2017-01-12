#!/bin/bash


read -p "please input number : " num

if [ $num -gt 10 ]
then
	if [ $num -lt 20 ]
	then
		echo "yes"
	else
		echo "no"
	fi
else
	echo "no"
fi
