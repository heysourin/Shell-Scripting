#!/bin/bash

#Generating a random number between 1 to 6
NO=$(( $RANDOM%6+1 ))
echo "number is $NO"
