#!/bin/bash

read -p "Please input a number: " num


echo -n "num = $num, "
echo -n "The abs num is: "

if [ $num -ge 0 ]
then
	echo $num
else
	echo $[-num]
fi
