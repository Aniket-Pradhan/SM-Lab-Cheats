#!/bin/bash
file_name="sam.txt"
IFS=$'\n'
for st in $(cat $file_name)
do
	echo $st
done