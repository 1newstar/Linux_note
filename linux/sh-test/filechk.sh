#!/bin/bash

read -p "Please input a file name: " file

if [ -e $file ]
then
	echo "File $file is OK! And file can "
	if [ -r $file ]
	then
		echo "r"
	else
		echo "not be read!"
	fi
	
	if [ -w $file ]
	then
		echo "w"
	else
		echo "not be write!"
	fi
	
	if [ -x $file ]
	then
		echo "x"
	else
		echo "not be excute!"
	fi
else
	echo "File $file has not found!"
fi


