#!/bin/bash


sum=0

for i in $(seq 1 1 100)
do
	#echo -n "$i "
	sum=$[$i + $sum]
done

echo "1 + 2 + 3 + ... + 100 = $sum"
