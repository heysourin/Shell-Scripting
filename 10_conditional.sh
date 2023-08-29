#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -ge 40 ]]; then
    echo "You are pass"
else
    echo "Fail!!!"
fi

