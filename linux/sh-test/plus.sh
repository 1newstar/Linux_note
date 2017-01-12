#!/bin/bash

echo -n "1 + 2 + 3 + ... + 100 = "

sum=0

for i in $(seq 100)
do
	sum=$[$[sum]+ i]
done

echo $sum

