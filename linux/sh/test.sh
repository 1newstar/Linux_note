#!/bin/bash

pri (){
	for ((i = 0; i < 5; i++))
	do
		echo -n "$1 "
	done
	echo
}
read -p "please input char : " ch

echo $ch

pri $ch
