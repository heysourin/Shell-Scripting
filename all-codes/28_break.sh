#!/bin/bash

# example of break in a loop

read -p "Enter the number you want between 1 to 9: " no

for i in {1..9}
do
	#Break the loop if number found
	if [[ $no -eq $i ]]
	then
		echo "$no is found!!!"
		break
	fi
	echo "Number is $i"
done
