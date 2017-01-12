#!/bin/bash

while true
do
	clear
	echo "==== menu ===="
	echo "= 1 left up "
	echo "= 2 right up "
	echo "= 3 left down"
	echo "= 4 right down"
	echo "= 5 exit"
	read -p "please option : " option

	case $option in
		1)
	#		echo "left up"
			for ((i = 0; i < 5; i++))
			do
				for ((j = 0; j <= i; j++))
				do
					echo -n "* "
				done
				echo
			done
			;;
		2)
#			echo "right up"
			for ((i = 0; i < 5; i++))
			do
				for ((j = 0; j < 5 - i - 1; j++))
				do
					echo -n "  "
				done
				for ((j = 0; j <= i; j++))
				do
					echo -n "* "
				done
				echo
			done
			;;
		3)
#			echo "left down"
			for i in $(seq 0 1 4)
			do
				for j in $(seq 0 1 $[4 - $i])
				do
					echo -n "* "
				done
				echo
			done
			;;
		4)
#			echo "right down"
			for i in $(seq 0 1 4)
			do
				for j in $(seq 0 1 $[$i - 1])
				do
					echo -n "  "
				done

				for j in $(seq 0 1 $[4 - $i])
				do
					echo -n "* "
				done
				echo
			done
			;;
		5)
			echo "exit"
			exit 0
			;;
		*)
			echo "option err"
			;;
	esac
	read
done
