#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9
do
	echo -n "$i "
done
echo

for i in $(seq 1 1 9)
do
	echo -n "$i "
done
echo
for i in $(seq 5 5 20)
do
	echo -n "$i "
done
echo
for i in $(seq 1 2 100)
do
	echo -n "$i "
done
echo

for i in $(seq 10)
do
	echo -n "$i "
done
echo
