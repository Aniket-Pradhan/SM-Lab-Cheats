#1/bin/bash

temp=1000000

count=`awk '{print NF}' exam2.txt`
temp=10000
for((i=1;i<=$count;i++))
do
	char=`cat exam2.txt | awk '{print $'$i'}'`	
	if(($temp>$char))
		then
			temp=$char
	fi
done

echo "Minimum number in the file exam2.txt is" $temp