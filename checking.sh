#!/bin/bash

# assigning variable
a=`expr 11`

# for loop
for ((i=0;i<=$a;i++))
do
	echo $i
done

# for loop using seq
for j in `seq 1 10`
do
	echo $j
done

# while loop
counter=0
while [ $counter -lt 10 ]
do
	echo $counter
	let counter=counter+1
done

# until loop
counter_until=0
until [ $counter_until -lt 10 ]
do
	
	echo $counter_until
	let counter_until=counter_until+1
done

# if loop


# switch case


# arrays in bash
# read -a makes array from input


