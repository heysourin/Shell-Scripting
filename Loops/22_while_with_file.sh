#!/bin/bash

# Reading a content from a file
while read myVar
do
	echo "Value from file is $myVar"
done < names.txt
