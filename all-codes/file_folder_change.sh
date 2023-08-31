#!/bin/bash

# this script will 1. create a folder($1), 2. move a file($2) to the newly created folder, then 3. change the directory to the new folder, then 4. shows the file list of the folder.
mkdir $1
echo "folder created $1"

mv $2 $1
echo "Moved file $2 to $1"

cd $1
echo "Folder path changed to $1"

echo "Files present in this folder: "
ls
