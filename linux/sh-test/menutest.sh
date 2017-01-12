#!/bin/bash

clear
echo "******* 活动折扣列表 *******"
echo "原价1999元/台"
echo " 3台打9.5折"
echo " 5台打9折"
echo "10台打8.5折"
echo "15台打8折"
echo "20台打7.5折"
echo "****************************"
read -p "请输入购买数量：" num

if [ $num -ge 20 ]
then
	n=0.75
elif [ $num -ge 15 ]
then
	n=0.8
elif [ $num -ge 10 ]
then
	n=0.85
elif [ $num -ge 5 ]
then
	n=0.9
elif [ $num -ge 3 ]
then
	n=0.95
elif [ $num -ge 0 ]
then
	n=1
else
	echo "Wrong number!"
	exit
fi
echo $n
echo "您的价格清单如下："

echo -n "1999 * $num * $n = "

price=`echo "scale=2;1999*$num*$n" | bc`

echo "$price 元"




