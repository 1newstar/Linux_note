#!/bin/bash


for ((i = 1; i < 10; i++))
do
	echo -n "$i "
done
echo

for ((i = 9; i > 0; i--))
do
	echo -n "$i "
done
echo

for i in $(seq 9 -1 1)
do
	echo -n "$i "
done
echo
