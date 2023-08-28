#!/bin/bash

#Script to show how to use variables	

a=10

name="Ryle"

age=20

echo "My name is $name and age is $age"

name="Phoenix"

echo "My name is $name"

#var to store the output of a command

HOSTNAME=$(hostname)

echo "Name of this machine is $HOSTNAME" 

CURR_DIR=$(pwd)

echo "Current directory is $CURR_DIR"

readonly COLLEGE_NAME="Self taught"

echo "College name is: $COLLEGE_NAME"

