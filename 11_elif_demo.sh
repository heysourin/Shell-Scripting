#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -ge 80 ]]; then
    echo "Excellent! You scored an A."
elif [[ $marks -ge 60 ]]; then
    echo "Good job! You scored a B."
elif [[ $marks -ge 40 ]]; then
    echo "You passed with a C."
else
    echo "Sorry, you failed."
fi

