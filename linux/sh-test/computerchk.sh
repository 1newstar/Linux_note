#!/bin/bash

clear

echo "****** Computer Menu ******"
echo "1 Cpu info"
echo "2 Men info"
echo "3 Disk info"
echo "***************************"

read -p "Please input the number: " number

case $number in
	1)
		echo "Cpu info"
		cat /proc/cpuinfo
		;;
	2)
		echo "Mem info"
		free
		;;
	3)
		echo "Disk info"
		fdisk -l
		;;
	*)
		echo "Data error!"
		;;
esac

