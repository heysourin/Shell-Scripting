#!/bin/bash

#while IFS="," read id name age
#do
#	echo "Id is $id"
#	echo "name is $name"
#	echo "age is $age"
#done < test.csv

## Another way of doing the same

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
	echo "Id is $id"
	echo "name is $name"
	echo "age is $age"
done
