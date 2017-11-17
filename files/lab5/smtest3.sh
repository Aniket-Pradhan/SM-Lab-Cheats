#1/bin/bash

direct=$1
echo "Files before changing: "
ls $direct
cd $direct
listing=`ls`
pwd
count=`echo $listing|awk '{print NF}'`
echo $count
for((i=1;i<=$count;i++))
do
	char=`echo $listing|awk '{print $'$i'}'`
	#mv $direct/$char $direct/$char.ext
	
	mv "$char" "${char%.*}.ext"
done
cd ..
pwd
echo "Files after changing: "
ls $direct