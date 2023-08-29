#!/bin/bash

myVar="Hey buddy, how are you?"

# length count
myVarLength=${#myVar}
echo "Length of the myVar is ${myVarLength}"

# upper case

echo "Into uppercase: ${myVar^^}"
echo "Into lowercase: ${myVar,,}"

#replacement
newVar=${myVar/buddy/Ryle}
echo "Replaced new word is $newVar"

#slice
echo "Sclicing only buddy: ${myVar:4:4}"
