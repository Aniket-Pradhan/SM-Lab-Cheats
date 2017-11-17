#!/bin/sh

num=$1
new=$1
temp=$((0))
while [ "$num" -gt 0 ]
do
	tempnum=`expr $num % 10`
	num=`expr $num / 10`
	if [ "$tempnum" -gt "$temp" ]
	then
		temp=$tempnum
	fi
done

echo 'Maximum digit in '"$new"' is: '"$temp"