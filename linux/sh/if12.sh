#!/bin/bash

read -p "please input number : " num

if [ ! $num -ge 0 ]
then
	echo "yes"
else
	echo "no"
fi
