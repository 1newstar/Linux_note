#!/bin/bash

read -p "Please input a number: " num1
read -p "Please input another number: " num2 

#read -p "Please input two numbers:" num1 num2

echo "num1 = $num1  num2 = $num2"

echo -n "The bigger number is "

#if [ $num1 -gt $num2 ]
#then
#	echo $num1
#else
#	if [ $num1 -lt $num2 ]
#	then
#		echo $num2
#	else
#		echo $num1
#		echo "Two number eq!"
#	fi
#fi




max=$num1
if [ $max -lt $num2 ]
then
	max=$num2
fi
echo $max


#if [ $num1 -ge $num2 ]
#then
#	echo $num1
#fi

#if [ $num1 -lt $num2 ]
#then
#	echo $num2
#fi




