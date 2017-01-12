#!/bin/bash

clear
echo "==== MENU ===="
echo "1 西红柿炒鸡蛋"
echo "2 鸡蛋炒西红柿"
echo "3 鱼香肉丝"
echo "4 小炒肉"
read -p "please input option : " option

if [ $option -eq 1 ]
then
	echo "10$"
elif [ $option -eq 2 ]
then
	echo "20$"
elif [ $option -eq 3 ]
then
	echo "30$"
elif [ $option -eq 4 ]
then
	echo "40$"
else
	echo "option err"
fi

