#!/bin/bash


if service nfs status | grep "正在运行..."  &> /dev/null
then
	echo "正在运行..."
else
	echo "已停"
fi
