#!/bin/sh

num=$1
sum=$((1))
for i in `seq 2 $num`
do
	sum=`expr $sum \* $i`
done

echo 'Factorial of '"$1"' is: '"$sum"