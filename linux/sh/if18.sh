
#!/bin/bash

echo "1 cpu info"
echo "2 mem info"
echo "3 disk info"
read -p "please input option[1 ~ 3] : " option

case $option in
	1)
		cat /proc/cpuinfo
		;;
	2)
		free
		;;
	3)
		fdisk -l
		;;
	*)
		echo "option err!"
		;;
esac
