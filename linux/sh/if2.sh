#!/bin/bash

#read -p "please input a : " a
#read -p "please input b : " b

read -p "please input two numbers : " a b
echo "a = $a b = $b"

max=$a
if [ $max -lt $b ]
then
	max=$b
fi

echo "max = $max"
echo "==============="
if [ $a -ge $b ]
then
	echo "max = $a"
fi

if [ $a -lt $b ]
then
	echo "max = $b"
fi
