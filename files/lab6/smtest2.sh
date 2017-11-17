#!/bin/bash

sums=0
count=`awk '{print NF}' exam2.txt`
for((i=1;i<=$count;i++))
do
	char=`cat exam2.txt | awk '{print $'$i'}'`	
	sums=$[$sums+$char]
done

mean=$(echo "scale=2; $sums / $count" | bc)
echo "Mean of the numbers in the file exam2.txt is" $mean