#!/bin/bash

#本文件用来从老师电脑nfs服务器拷贝/ken下的每天的课件和测试代码，
#及将本地/home/xiami/homework/下的作业文件上传到老师电脑nfs服务器/homework/106_马驰原/目录下

#使用方法：
#./kencopycmd.sh dn file   ->  下载课件文件
#./kencopycmd.sh dn dir	->	下载测试代码文件夹
#./kencopycmd.sh up file	->	上传作业文件
#./kencopycmd.sh up dir	->	上传作业文件夹

IP=172.16.1.52
STATUS=$1
FILE=$2

#检测第一个参数，确定是要下载文件还是上传文件，并选择对应的挂载文件夹
if [ $STATUS = "dn" ]
then
	DIR="/ken"
else
	if [ $STATUS = "up" ]
	then
		DIR="/homework"
	else
		echo "Wrong CMD!"
		exit
	fi
fi

mountstatus=0
#进行网络测试
if ping $IP -c 1 &> /dev/null
then
	echo "Ping $IP Success!"
	#查询nfs服务器是否开启，及查询共享文件夹
	if showmount -e $IP
	then
		if mount $IP:$DIR /mnt
		then
			echo "mount $IP:$DIR OK!"
			#挂载成功后置标志位
		else
			echo "First mount Failed!"
			exit
			#首次挂载失败，可能是/mnt目录被别的设备挂载占用，先进行卸载
			if umount /mnt
			then
				echo "umount /mnt Success!"
				if mount $IP:$DIR /mnt
				then
					echo "mount $IP:$DIR OK!"
				else
					echo "mount $IP:$DIR Fialed!"
					exit
				fi
			else
				echo "umount /mnt Failed!"
				exit
				#卸载不成功，需要使用强制卸载
				if umount /mnt -l
				then
					echo "umount /mnt -l Success!"
					if mount $IP:$DIR /mnt
					then
						echo "mount $IP:$DIR OK!"
					else
						echo "mount $IP:$DIR Fialed!"
						exit
					fi
				else
					echo "umount /mnt -l Failed!"
					exit
				fi
			fi
		fi
	else
		echo "Service nfs closed!"
		exit
	fi
else
	echo "Ping $IP Failed!"
	exit
fi

#测试第一个参数，确定进行下载还是上传操作
if [ $STATUS = "dn" ]
then
	#先查询要下载的文件在挂载目录中是否存在
	if [ -e /mnt/$FILE ]
	then
		path=`find /mnt/$FILE -name $FILE`
		echo "Found $FILE in path $path"
		#查找到目标文件，进行复制操作，可以多次进行复制
		if \cp $path /home/xiami/note/ -rf 
		then
			echo "***Cope $FILE complate!***"
		fi
	else
		echo "No found file $FILE!"
	fi
else
	if [ $STATUS = "up" ]
	then
		#检查挂载目录中是否有上传作业文件夹格式
		if [ -d /mnt/106_马驰原 ]
		then
			echo "Found dir 106_马驰原"
			if cp /home/xiami/homework/$FILE /mnt/106_马驰原/ -rf
			then
				echo "***Upload $FILE to dest complate!***"
			fi
		else
			#如果作业文件夹格式不存在，则创建格式
			if cp /home/xiami/homework/106_马驰原 /mnt/ -rf
			then
				echo "Copy dir 106_马驰原"
				if cp /home/xiami/homework/$FILE /mnt/106_马驰原/ -rf
				then
					echo "***Mkdir and Upload $FILE to dest complate!***"
				fi
			fi
		fi
	fi
fi

umount /mnt



