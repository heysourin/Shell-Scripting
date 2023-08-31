#!/bin/bash

# Loop from 1 to 5
for i in {1..5}; do
    let mul=2*$i
    echo "Iteration $mul"
done


for i in {1..10}; do
    echo "Multiplication table: $((3*i))"
done


for name in Raju Sham Baburao;do
	echo "Name is $name"
done
