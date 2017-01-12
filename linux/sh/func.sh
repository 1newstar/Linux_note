#!/bin/bash

function pri (){
	for ((i = 0; i < $2; i++))
	do
		for ((j = 0; j <= i; j++))
		do
			echo -n "$1 "
		done
		echo
	done
}

function hello (){
	echo "hello world"
}

test1(){
	echo "test1 bash "
}
echo "hello"

hello
test1
read -p "please input line : " line

pri "#"  $line
