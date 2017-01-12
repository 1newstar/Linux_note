#!/bin/bash

read -p "please input filename : " file

if [ -f $file ]
then
	echo "$file 存在!"
else
	echo "$file 不存在!"
fi
