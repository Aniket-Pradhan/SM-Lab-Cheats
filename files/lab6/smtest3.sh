#!/bin/bash

n_number=$1
for((i=1;$i<=$n_number;i++))
do
	for((j=$[$n_number-$i];j>=0;j--))
	do	
		echo -n " "
	done
	for((k=1;k<=$i;k++))
	do
		echo -n "| "
	done
	echo
done
