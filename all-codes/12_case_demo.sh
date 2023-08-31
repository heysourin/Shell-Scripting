#!/bin/bash
echo "Provide an option: a for date, b list of files, c check for current directory"

read choice

case $choice in
	#how to write multiple lines in one option:
	a)
		echo "Today is: "
		date
		echo "Ending."
		;;
	b)ls;;
	c)pwd;;
	*)echo "Provide a valid value";;
esac
