#!/bin/bash


read -p "please input x and y : " x y

if [ $x -gt 0 ]
then
	if [ $y -gt 0 ]
	then
		echo "坐标位于第一象限"
	fi
fi

#if [[ $x -gt 0 || $y -gt 0 ]]
#if [ $x -gt 0 ] && [ $y -gt 0 ]
if [ $x -gt 0 -a $y -gt 0 ]
then
	echo "first"
fi
