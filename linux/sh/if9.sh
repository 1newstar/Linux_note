#!/bin/bash

mode=""
read -p "please input filename : " file

echo "mode = $mode"

if [ -e $file ]
then
	if [ -r $file ]
	then
		echo "r"
		mode=$mode"r"
	fi

	if [ -w $file ]
	then
		echo "w"
		mode=$mode"w"
	fi

	if [ -x $file ]
	then
		echo "x"
		mode=$mode"x"
	fi

else
	echo "$file 不存在!"
	exit 0
fi

echo "$file 存在，属主权限$mode"

