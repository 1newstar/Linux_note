#!/bin/bash


read -p "please input number : " num

if [ $num -ge 0 ]
then
	echo "$num 绝对值是 $num"
else
	#echo "$num 绝对值是 $[-num]"
	echo "$num 绝对值是 $[-1 * $num]"
fi
