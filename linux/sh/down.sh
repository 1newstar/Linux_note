#!/bin/bash

IP=172.16.1.52
SHARE=/ken
#1 检测是否可以ping通

if ! ping $IP -c 2 &> /dev/null
then
	echo "no link"
	exit -1;
fi

#echo "link ok"

#强制卸载挂载目录
umount -l /mnt &> /dev/null
#2 检测nfs服务是否启动
if [ $1 = "down" ]
then
	#echo "down"
	if showmount -e $IP &> /dev/null
	then
		mount $IP:$SHARE /mnt
		/bin/cp /mnt/* /test/ -rf
	else
		echo "down nfs failed"
	fi
elif [ $1 = "up" ]
then
	#echo "up"
	if showmount -e $IP &> /dev/null
	then
		mount $IP:/homework /mnt
		/bin/cp /52_张三 /mnt -rf
	else
		echo "up nfs failed"
	fi
fi

umount -l /mnt &> /dev/null
