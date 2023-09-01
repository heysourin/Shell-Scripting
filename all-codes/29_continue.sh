#!/bin/bash


#Program to print odd numbers
for i in {1..10}
do
	let r=$i%2
	if [[ $r -eq 0 ]]
	then
		continue
	fi
	echo "Odd no. is $i"
done
