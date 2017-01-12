#!/bin/bash

read -p "please input x and y : " x y

#echo "x = $x y = $y"
if [ $x -eq 0 ]
then
	#right
	if [ $y -eq 0 ]
	then
		echo "$x $y 位于圆点"
	fi
fi
if [ $x -ne 0 ]
then
	#right
	if [ $y -eq 0 ]
	then
		echo "$x $y 位于X轴"
	fi
fi
if [ $x -eq 0 ]
then
	#right
	if [ $y -ne 0 ]
	then
		echo "$x $y 位于Y轴"
	fi
fi

if [ $x -gt 0 ]
then
	if [ $y -gt 0 ]
	then
		echo "$x $y 位于第一象限"
	fi
fi
if [ $x -lt 0 ]
then
	if [ $y -gt 0 ]
	then
		echo "$x $y 位于第二象限"
	fi
fi
if [ $x -lt 0 ]
then
	if [ $y -lt 0 ]
	then
		echo "$x $y 位于第三象限"
	fi
fi
if [ $x -gt 0 ]
then
	if [ $y -lt 0 ]
	then
		echo "$x $y 位于第四象限"
	fi
fi
