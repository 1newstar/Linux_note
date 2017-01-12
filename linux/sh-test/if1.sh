#!/bin/bash

#num = 10

read -p "Please input a number: " num

echo "num = $num"

if [ $num -gt 10 ]
then
	echo "num = $num > 10"
fi

