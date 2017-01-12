#!/bin/bash

IP=172.16.1.52

if ping $IP -c 2 &> /dev/null 
then
	echo "IP: $IP link OK!"
else
	echo "IP: $IP link faled!"
fi

