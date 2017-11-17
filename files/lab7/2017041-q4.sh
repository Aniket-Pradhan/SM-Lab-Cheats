#!/bin/sh

string=$1
length=`expr length $string`
len2=`expr $length - 1`
for i in `seq 0 $len2`
do
	pos=`expr $length - $i`
	temp=`echo $string | cut -c $pos`
	string2=$string2$temp
done
if [ $string = $string2 ]
then
	echo "It's a palindrome"
else
	echo "It's not a palindrome"
fi