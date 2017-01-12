#!/bin/bash

echo "1 AAAAA"
echo "2 BBBBB"
echo "3 CCCCC"
read -p "please input option[1 ~ 3] : " option

case $option in
	1)
		echo "AAAAA"
		;;
	2)
		echo "BBBBB"
		;;
	3)
		echo "CCCCC"
		;;
	*)
		echo "option err!"
		;;
esac
