#!/bin/bash

read -p "Please input the point coordinate(x, y): " x y

echo -n "The point is in "

if [ $x -gt 0 ]
then
	if [ $y -gt 0 ]
	then
		echo "第一象限"
	else
		if [ $y -lt 0 ]
		then
			echo "第四象限"
		else
			echo "X轴正半轴"
		fi
	fi
else
	if [ $x -lt 0 ]
	then
		if [ $y -gt 0 ]
		then
			echo "第二象限"
		else
			if [ $y -lt 0 ]
			then
				echo "第三象限"
			else
				echo "X轴负半轴"
			fi
		fi
	else
		if [ $y -gt 0 ]
		then
			echo "Y轴正半轴"
		else
			if [ $y -lt 0 ]
			then
				echo "Y轴负半轴"
			else
				echo "原点"
			fi
		fi
	fi
fi

