#!/bin/bash

IP=172.16.1.52
DIR=$1
STATUS=$2
FILE=$3

mountstatus=0

if ping $IP -c 1 &> /dev/null
then
	echo "Ping $IP Success!"
	if showmount -e $IP
	then
		if mount $IP:$DIR /mnt
		then
			echo "mount $IP:$DIR OK!"
			mountstatus=1
		else
			if umount /mnt
			then
				echo "umount /mnt Success!"
				if mount $IP:$DIR /mnt
				then
					echo "mount $IP:$DIR OK!"
					mountstatus=1
				else
					echo "mount $IP:$DIR Fialed!"
				fi
			else
				echo "umount /mnt Failed!"
				if umount /mnt -l
				then
					echo "umount /mnt -l Success!"
					if mount $IP:$DIR /mnt
					then
						echo "mount $IP:$DIR OK!"
						mountstatus=1
					else
						echo "mount $IP:$DIR Fialed!"
					fi
				else
					echo "umount /mnt -l Failed!"
				fi
			fi
		fi
	else
		echo "Service nfs closed!"
	fi
else
	echo "Ping $IP Failed!"
fi

if [ $STATUS = "dn" ]
then
	if [ $mountstatus -eq 1 ]
	then
		path=`find /mnt -name $FILE`
		echo "Found $FILE in path $path"
		if cp $path /home/xiami/test/ -rf 
		then
			echo "Cope $FILE complate!"
			umount /mnt
		fi
	fi
else
	if [ $STATUS = "up" ]
	then
		if [ $mountstatus -eq 1 ]
		then
			if [ -d /mnt/106_马驰原 ]
			then
				echo "Found dir 106_马驰原"
				if cp /home/xiami/homework/$FILE /mnt/106_马驰原/ -rf
				then
					echo "Upload $FILE to dest complate!"
				fi
			else
				if cp /home/xiami/homework/106_马驰原 /mnt/ -rf
				then
					echo "Copy dir 106_马驰原"
					if cp /home/xiami/homework/$FILE /mnt/106_马驰原/ -rf
					then
						echo "Upload $FILE to dest complate!"
					fi
				fi
			fi
				umount /mnt
		fi
	fi
fi

