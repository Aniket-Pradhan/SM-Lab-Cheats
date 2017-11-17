#!/bin/bash

count=`awk '{print NF}' filename.txt`
for((i=0;i<$count;i++))
do
	ii=$[$i+1]
	num=`cat filename.txt | awk '{print $'$ii'}'` 
	arra[$i]=$num
done

for((k=0;k<$count;k++))
do
	for((l=$k;l<$count;l++))
	do
		if [ ${arra[$k]} -gt ${arra[$l]} ]
		then
			temp=${arra[$l]}
			arra[$l]=${arra[$k]}
			arra[$k]=$temp
		fi
	done
done


for((i=0;i<$count;i++))
do
	echo ${arra[$i]}
done