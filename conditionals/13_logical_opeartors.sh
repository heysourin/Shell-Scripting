#!/bin/bash

#AND

read -p "Enter your age: " age
read -p "Your nationality: " nat

if [[ $age -ge 18 ]] && [[ $nat -eq "Indian" ]];then
	echo "You can vote!!!"
else
	echo "You can not vote"

fi


# OR

read -p "Enter your age again: " age
read -p "Your nationality again: " nat

if [[ $age -ge 18 ]] || [[ $nat -eq "Indian" ]];then
        echo "You can vote!!!"
else
        echo "You can not vote"

fi

