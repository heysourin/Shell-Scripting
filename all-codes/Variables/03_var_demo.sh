#!/bin/bash

#Script to show how to use variables	

a=10 #do not use space in between

name="Ryle"

age=20

echo "My name is $name and age is $age"


name="Phoenix" #variables are reassignable

echo "My name is $name"

##----------------------------------------##
#var to store the output of a command

HOSTNAME=$(hostname) #`hostname` shows your pc name

echo "Name of this machine is $HOSTNAME" 

CURR_DIR=$(pwd) #current directory

echo "Current directory is $CURR_DIR"

