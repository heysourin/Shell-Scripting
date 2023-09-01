#!/bin/bash

FILE="/home/heysourin/Desktop/test.csv"

if [[ -f $FILE ]]
then
	echo "File exist"
else
	echo "File does not exist"
	exit 1
fi
