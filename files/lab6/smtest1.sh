#!/bin/bash

count=`grep -o [BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz] abc.txt | wc -l`
echo "Number of Consonants are" $count