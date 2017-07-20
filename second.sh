#!/bin/bash
echo "enter your name"
read name
echo $name | grep [A-Z]
if [ $? -ne 0 ]
then
	echo "please enter your name in CAPITALS"
	exit 1
else
	echo "$name"
	exit 0
fi
