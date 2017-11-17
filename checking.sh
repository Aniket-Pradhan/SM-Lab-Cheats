#!/bin/bash

# assigning variable
a=`expr 11`

# for loop
for ((i=0;i<=$a;i++))
do
	#echo $i
	b=`expr 1`
done

# for loop using seq
for j in `seq 1 10`
do
	#echo $j
	b=`expr 1`
done

# while loop
counter=0
while [ $counter -lt 10 ]
do
	#echo $counter
	let counter=counter+1
done

# multiple files in bash
for i in {1..3}
do
	cat "exam$i.txt" >> student.txt
	echo >> student.txt
done

# arrays in bash
# read -a makes array from input
declare -a myarr
myarr[0]=1
myarr[1]=2
echo ${myarr[0]}
echo ${myarr[*]}

# sortinh
sort -k 4 -V input.txt > output.txt
