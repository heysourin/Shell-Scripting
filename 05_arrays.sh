#!/bin/bash

#Array

myArray=(12 21 Hello "Ryle Phoenix" 44 14)

echo "${myArray[0]}"

echo "${myArray[2]}"

echo "${myArray[3]}"

echo "Value at 3rd index: ${myArray[3]}"

echo "All the values in array: ${myArray[*]}"

#Array length:

echo "length of the array: ${#myArray[*]}"

# Getting Certain elements

echo "Values from index 2 to 4: ${myArray[*]:2:3}"

# Update an array with new values: will add at the end

myArray+=(New 30 40)
echo "Values of new array are: ${myArray[*]}"


# Key-Values Pair
declare -A myArr2
myArr2=([name]=Ryle [age]=20 [city]=memari)

echo "Name is ${myArr2[name]}"
echo "City is ${myArr2[city]}"

