#!/bin/bash

IP=172.168.1.52

if ping $IP -c 3 &> /dev/null
then
	echo "link ok!"
else
	echo "no link!"
fi
