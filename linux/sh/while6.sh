#!/bin/bash

#创建3个用户
i=1
while [ $i -le 3 ]
do
	while true
	do
		read -p  "please input create $i username : " username

		if ! cut -d: -f 1 /etc/passwd | grep -w $username
		then
			break
		fi
	done

	while true
	do
		read -p "please fri input $i $username passwd : " pass1

		read -p "please sed input $i $username passwd : " pass2

		if [ $pass1 = $pass2 ]
		then
			break
		fi
	done

	useradd $username

	#非交互式只需要一次
	echo $pass1 | passwd $username --stdin > /dev/null

	i=$[$i + 1]
done
