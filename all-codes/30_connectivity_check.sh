#!/bin/bash

read -p "Which site you want to chcek: " site

ping -c 1 $site

#sleep 3s

if [[ $? -eq 0 ]]
then
	echo "Successfully connected to $site"
else
	echo "Unable to connect $site"
fi
