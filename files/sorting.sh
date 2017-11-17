#!/bin/bash

filename = $1
nlines = `wc -l $1`
sum = 0
min = `awk 'NR==1{print $4}'`
max = 0
for ((i=2;i<=$nlines;i++))
do
	a = `awk 'NR==1{print $4}' $1`
	sum = `expr $a + $sum`
done