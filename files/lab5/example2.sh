#!/bin/bash

while :
do
	clear
	echo "------------"
	echo "Main Menu"
	echo "------------"
	echo "[1] Show Today's Date"
	echo "[2] Show Files in dir"
	echo "[3] Show Calendar"
	echo "[4] Start Editor"
	echo "[5] Exit"
	echo "+++++++++++++++++++++++"
	echo -n "Enter Choice: "
	read choice
	case $choice in
		1) echo "Today is `date`. Press a key" ;read;;
		2) echo "File in `pwd` are";
			ls -l; echo "Press a key" ; read ;;
		3) cal ; echo "Press a key" ; read ;;
		4) gedit ;;
		5) exit 0 ;;
		*) echo "Wrong choice, enter again, press akey";read;;
	esac
done