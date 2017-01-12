#!/bin/bash

while true
do
	if service nfs status	&> /dev/null
	then
		echo "Service running..."
	else
		Service httpd restart &> /dev/null
		echo "Service restart!"
	fi
	sleep 1
done

