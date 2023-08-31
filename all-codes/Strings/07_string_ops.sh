#!/bin/bash

myVar="Hey there!!!"

myVarLength=${#myVar}
echo "Length of the myVar is $myVarLength"


#Uppercase
echo "In uppercase: ${myVar^^}"
#lowercase
echo "In lowercase: ${myVar,,}"


#replace a word
newVar=${myVar/there/everyone}
echo "Changed variable is: "
echo "${newVar}"


#slice
echo "After slice: "
echo "${myVar:4:5}"
