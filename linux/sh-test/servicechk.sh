#!/bin/bash

if service $1 status &> /dev/null
then
	echo "Service $1 running!"
else
	echo "Service $1 stopped!"
fi
