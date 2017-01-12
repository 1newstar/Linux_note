#!/bin/bash

read -p "please input number : " num

if [ $num -ge 10 ]
then
	echo "$num 大于等于10 "
else
	echo "$num 小于10"
fi
