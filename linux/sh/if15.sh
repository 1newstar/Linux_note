#!/bin/bash

read -p "please input number : " num

if [ $num -ge 1 -a $num -lt 3 ]
then
	price=$[1999  * $num]
elif [ $num -ge 3 -a $num -lt 5 ]
then
	price=$[$num * 1999 * 95 / 100]
elif [ $num -ge 5 -a $num -lt 10 ]
then
	price=$[$num * 1999 * 9 / 10]
elif [ $num -ge 10 -a $num -lt 15 ]
then
	price=$[$num * 1999 * 85 / 100]
elif [ $num -ge 15 -a $num -lt 20 ]
then
	price=$[$num * 1999 * 8 / 10]
elif [ $num -ge 20 ]
then
	price=$[$num * 1999 * 75 / 100]
else
	echo "$num err"
fi

echo "共购买 $num 台， 总价格 $price 元"
