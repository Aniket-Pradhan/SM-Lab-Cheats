#!/bin/sh

myfun() {
for i in `seq $1 $2`
do
	if [ `expr $i % 3` -eq 0 ] && [ `expr $i % 5` -ne 0 ]
	then 
		echo $i
	fi
done
}

myfun $1 $2
