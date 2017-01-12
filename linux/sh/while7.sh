#!/bin/bash


#nfs

while true
do
	if service nfs status  | grep "已停" &> /dev/null
	then
		service nfs restart > /dev/null
	fi
	sleep 3
done
