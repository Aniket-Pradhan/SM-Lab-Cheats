#!/bin/bash


var1=10
var2=5


#if(($var1>$var2))
#then
#	echo "$var1 greater than $var2"
#else
#	echo "$var2 greater than $var1"
#fi

#for ((i=0;i<15;i++))
#do
#	echo $i
#done

count=`awk '{print NF}' exam1.txt`

echo "The number of words are: "$count

for ((i=1;i<=$count;i++))
do
	awk '{print "Word Number" '$i' "is\t" $'$i'}' exam1.txt
done