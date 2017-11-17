#!/bin/bash

count=10
for((i=1;i<=$count;i++))
do
	mkdir "Dir$i"
	cd "Dir$i"
done