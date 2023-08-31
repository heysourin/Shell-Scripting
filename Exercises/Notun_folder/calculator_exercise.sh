#!/bin/bash

read -p "Enter your choice: 1 for +, 2 for -, 3 for *, 4 for /: " choice

read -p "Enter first number: " num1
read -p "Enter second number: " num2

add(){
	echo "Result of addition is: $(($num1+$num1))"
}

sub(){
        echo "Result of subtraction is: $(($num1-$num1))"
}

mul(){
        echo "Result of multiplication is: $(($num1*$num1))"
}

div(){
        echo "Result of division is: $(($num1/$num1))"
}


case $choice in
	1)add num1 num2;;
	2)sub num1 num2;;
	3)mul num1 num2;;
	4)div num1 num2;;
	*)echo "Wrong input";;

esac
