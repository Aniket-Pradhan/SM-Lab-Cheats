#1/bin/bash

count=`wc -m abc.txt | awk '{print $1}'`
countvowel=$[0]
add=1
checka="a"
for((i=1;i<=$count;i++))
do
	new=`head -c $i abc.txt`
	newchar=`echo $new | tail -c 2`
	#echo $newchar
	if(($checka -eq $newchar))
	then
		echo $newchar
		countvowel=$[$countvowel+1]
	fi
done

echo "Number of vowel are" $countvowel