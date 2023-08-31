#!/bin/bash

#Key-Values Pair

declare -A myArr2 #have to declare the array first
myArr2=( [name]=Ryle [age]=20 [city]=Jaipur )

echo "Name is ${myArr2[name]}"
echo "City is ${myArr2[city]}"

