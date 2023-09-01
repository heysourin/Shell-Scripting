# Shell Scripting Tutorial

Welcome to the Shell Scripting Tutorial repository! In this tutorial, you'll learn the fundamentals of shell scripting, a powerful skill for automating tasks, managing systems, and more. Whether you're a beginner or have some programming experience, this guide will help you understand the basics of shell scripting.

## Table of Contents

1. [Introduction to Shell Scripting](#introduction-to-shell-scripting)
2. [Getting Started](#getting-started)
3. [Basic Syntax](#basic-syntax)
4. [Variables and Data Types](#variables-and-data-types)
5. [Control Structures](#control-structures)
6. [Functions](#functions)
7. [File Manipulation](#file-manipulation)
8. [Command-Line Arguments](#command-line-arguments)
9. [Useful Shell Commands](#useful-shell-commands)
10. [Tips and Best Practices](#tips-and-best-practices)
11. [Resources](#resources)

## Introduction to Shell Scripting

Shell scripting is a way to automate tasks and create programs using shell commands. A shell script is a sequence of commands that can be executed in a shell environment. Shell scripts are commonly used for system administration, automation, and other tasks.

## Getting Started

To start learning shell scripting, you need:

- A text editor (e.g., `vim`, `nano`, `sublime text`) for writing scripts.
- A shell interpreter (e.g., `bash`, `sh`) to execute the scripts.

# Shell Scripting Tutorial

A shell is a command-line interface (CLI) program that provides a user-friendly way to interact with an operating system (OS) or a computer system. It serves as a bridge between the user and the kernel (core of OS) by interpreting and executing commands entered by the user or by scripts.

# Different Types of Shells

1. Bash (Bourne-Again Shell): Bash is one of the most widely used shells and is the default shell on many Linux distributions. It is a powerful and versatile shell that supports scripting, interactive use, and command-line automation.

2. Zsh (Z Shell): Zsh is known for its extensive customization options and interactive features. It offers advanced auto-completion, syntax highlighting, and theming. Many users prefer Zsh for its user-friendly experience.

3. Fish (Friendly Interactive Shell): Fish is designed to be a user-friendly shell with a focus on interactive use. It provides helpful features like auto-suggestions, syntax highlighting, and an easy-to-understand scripting syntax.

4. Dash: Dash is a minimalistic POSIX-compliant shell optimized for scripting. It is often used as the default /bin/sh shell on many Unix systems because of its speed and efficiency.

5. Tcsh: Tcsh is an enhanced version of the C shell (csh) with additional features like command-line history, command-line editing, and job control. It's popular among some Unix users.

6. Ksh (Korn Shell): The Korn Shell is known for its scripting capabilities and is compatible with the Bourne Shell (sh). It offers advanced scripting features like associative arrays and floating-point arithmetic.

7. Ash (Almquist Shell): Ash is a lightweight and efficient shell that adheres to the POSIX shell standard. It is often used in embedded systems and as the basis for other shells like Dash.

8. Csh (C Shell): The C shell is an early Unix shell with C-like syntax. It offers some unique features but is less commonly used today, especially for scripting.

9. PowerShell: While primarily associated with Microsoft Windows, PowerShell has also been developed for Linux and macOS. It is a powerful and object-oriented shell designed for automation and system administration.

etc

# What is shell scripting?

- Shell scripting is a way to automate tasks and create programs using shell commands. A shell script is a sequence of commands that can be executed in a shell environment. Shell scripts are commonly used for system administration, automation, and other tasks.
- All the commands execute sequentially.
- Some important tasks engineers do with shell scripting is file manipulation, program execution, user interaction, automation etc.  

# Key characteristics and functions of a shell include:

- Command Interpretation: The shell interprets commands entered by the user and translates them into instructions that the operating system can understand and execute.

- Command Execution: It runs programs, utilities, and scripts on behalf of the user. This includes both built-in shell commands and external programs.

- Scripting: Shells support scripting languages that allow users to automate tasks by writing sequences of commands in script files.

- I/O Redirection: Shells allow users to redirect input and output streams (e.g., redirecting output to a file) to manipulate and process data.

- Variables: Users can create and manipulate variables to store and retrieve data within the shell environment.

- Control Structures: Shells support conditional statements (e.g., if-else), loops (e.g., for, while), and other control structures for scripting and automation.

- Environment Management: Shells manage environment variables, which are used to store configuration information and data that can be accessed by programs and scripts.

- Customization: Users can customize their shell environment by defining aliases, setting prompts, and configuring various settings.


# Shebang

- A shebang, also known as a hashbang or pound-bang, is a special character sequence at the very beginning of a text file. It is used in Unix-like operating systems to specify the interpreter that should be used to execute the script or program contained in the file.
- Whenever we try to execute a script, we have to instruct the Linux machine which interpreter or shell it should be using. It is possible that, in some machines 'bash' is not the default shell.
```bash
#!/bin/bash
```
- In this case, it indicates that the script should be executing using bash shell.
- It is not mandatory, but it is a good practice.

# Output in the Terminal
```bash
#!/bin/bash

echo "hello world"
```
`echo "hello world":` This is the main command of the script. It uses the echo command to print the text "hello world" to the standard output (usually the terminal or console).

# How to create a Shell File?
- `touch fileName.sh` then `vi fileName.sh`: It will create a file then open 'vi' editor on the shell where you can edit and create your shell scripts.
- Or you can directly do `vi fileName.sh` it will do the samen, create the file and open it on the editor.

# How to save the file from editor?
Whenever you finish writing the script, you press `esc` button then type `:wq`. It will save changes and quit the editor.

# How to run Shell Scripts?
`bash fileName.sh` will allow you to run the script. Make sure your file is in the same directory that you are currently in (on your shell) or you provide proper path-directory before the file-name

- PS. Below I am going to teach Shell Scripting. You will have to save easch file and run with the command I mentioned above.

# Comments
```bash
#!/bin/bash

echo "Before comments"

#Single line comment

<<comment
This 
is 
a 
multi
line 
comments

comment

echo "After comments"
```
- `#: The hash symbol (#)` at the beginning of the line is used to indicate a single-line comment in Bash. Any text following the # on the same line is considered a comment and is not executed as code.
- `<<comment` at the beginning and `comment` at the end of the comments are used for multiline comments. Any text in between these two things will be comsidered as comment and is not executed as code.

# Variables
```bash
#!/bin/bash

#Script to show how to use variables	

a=10 #do not use space in between

name="Ryle"

age=45

echo "My name is $name and age is $age"


name="Phoenix" #variables are reassignable

echo "My name is $name"

##----------------------------------------##
#var to store the output of a command

HOSTNAME=$(hostname) #`hostname` shows your pc name

echo "Name of this machine is $HOSTNAME" 

CURR_DIR=$(pwd) #current directory

echo "Current directory is $CURR_DIR"


```
- `a=10`: This line assigns the value 10 to the variable a. In Bash, you can create variables without explicitly declaring their types. Variables can store numbers, strings, or other data types.
- `name="Ryle"` and `age=20`: These lines assign values to the variables name and age. name is assigned the string "Ryle," and age is assigned the number 20.

- `echo "My name is $name and age is $age"`: This line uses the echo command to print a message that includes the values of the name and age variables. The $name and $age inside the double-quoted string are used to insert the values of the variables into the string.

- use `readonly` keyword for constant variable.

# Array
This is how arrays are written in shell scripting file.

```bash
#!/bin/bash

#Array

myArray=(12 21 Hello "Ryle Phoenix" 44 14)

echo "${myArray[0]}"

echo "${myArray[2]}"

echo "${myArray[3]}"

echo "Value at 3rd index: ${myArray[3]}"

echo "All the values in array: ${myArray[*]}" #prints all the values


#Array length:

echo "length of the array: ${#myArray[*]}" #prints the length

# Getting Certain elements

echo "Values from index 2 to 4: ${myArray[*]:2:3}" #how it works: {myArray[*]:start:how_many_elements_you_want}



# Update an array with new values: will get added at the end

myArray+=(New 30 40)
echo "Values of new array are: ${myArray[*]}"
```
- Signle words can be stored without semicolons("").
Now, save and run the file using `bash fileName.sh` command, you will see the desired output.

# Strings
```bash
#!/bin/bash

myVar="Hey there!!!"

myVarLength=${#myVar}
echo "Length of the myVar is $myVarLength"


#Uppercase
echo "In uppercase: ${myVar^^}"
#lowercase
echo "In lowercase: ${myVar,,}"


#replace a word
newVar=${myVar/there/everyone}
echo "Changed variable is: "
echo "${newVar}"


#slice
echo "After slice: "
echo "${myVar:4:5}"
```
- Signle words can be stored without semicolons("").

# User Input
```bash
#!/bin/bash

# Taking user input

echo "Enter your name: "
read name
echo "Name is $name"

#ANOTHER WAY
read -p "What is your name bruh? " name2
echo "Your name is $name2"
```
Now run the file.

# Arithmetic operatings
```bash
#!/bin/bash
x=10
y=2

mul=$x*$y
echo "$mul" #output: 10*2

let mul2=$x*$y
echo "$mul2" #20

# Direct
echo "Subtraction is: $(($x-$y))"
```
#### To do mathematical calculations: 
- Either you have to use `let` keyword, when you are assigning a variable
- Or when you are directly printing the calculations you have to use '(())' (double parentheses).


# Conditionals
## if-else
```bash
#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -ge 40 ]]; then
    echo "You are pass"
else
    echo "Fail!!!"
fi


```
`if [[ $marks -ge 40 ]]; then`: This line begins an if statement. It checks whether the value of marks is greater than or equal to 40. If this condition is true, the following commands will be executed.

`echo "You are pass"`: This line is executed if the condition in the if statement is true. It prints "You are pass" to the screen.

`else`: This line is part of the if statement and is executed if the condition in the if statement is false.

`echo "Fail!!!"`: This line is executed if the condition in the if statement is false. It prints "Fail!!!" to the screen.

`fi`: This line marks the end of the if statement, indicating that there are no more commands to be executed conditionally.

## elif

`elif [[ $marks -ge 60 ]]; then`: If the first condition is not met, this block is checked. If the user's marks are greater than or equal to 60, it prints "Good job! You scored a B."

`elif [[ $marks -ge 40 ]]; then`: If neither of the previous conditions is met, this block is checked. If the user's marks are greater than or equal to 40, it prints "You passed with a C."

## choice
```bash
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
```
`echo "Provide an option: a for date, b for list of files, c for check the current directory"`: This line prints a menu with options for the user to choose from.

`read choice`: This line reads the user's input and stores it in the variable choice.

The `case` statement allows you to evaluate the value of `choice` against different patterns:

`a)`: If the value of choice is "a," the code within this block is executed. It prints the current date using the date command. In the above code in option a it is also shown that how you can add multi line instructions.

`b)`: If the value of choice is "b," the ls command is executed, listing the files in the current directory.

`c)`: If the value of choice is "c," the pwd command is executed, displaying the current directory path.

`*)`: If none of the above patterns match (i.e., the user enters an invalid option), this block is executed, and it prints "Provide a valid value."

The `;;` statement marks the end of each block within the case statement.

## Logical Operators
```bash
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

```
In logical Operators we use `&&` and `||` according to our needs.
## Ternary Operator
```bash
#!/bin/bash

read -p "Enter your age: " age
[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"
```
In the above case if age is greater than or equal to 18 then the program will print "Adult" or it will print "Minor".

# Loops
## for loop
```bash
#!/bin/bash

# Loop from 1 to 5
for i in {1..5}; do
    let mul=2*$i
    echo "Iteration $mul"
done


for i in {1..10}; do
    echo "Multiplication table: $((3*i))"
done

# Iteration over strings
for name in Raju Sham Baburao;do
	echo "Name is $name"
done
```
- The first loop iterates over numbers from 1 to 5 (inclusive) using the brace expansion `{1..5}`.
- The second loop iterates over numbers from 1 to 10 (inclusive) using the brace expansion `{1..10}`.

## for loop iteration on files
Create a file named `names.txt:`. Add the following things in the file.
```
Ryle
Max
Sourin
Oslo
Professor
```
Then, create a shell script:
```bash
#!/bin/bash

#Getting values from a file names.txt

FILE="/home/heysourin/Desktop/shell-scripts/names.txt"

for name in $(cat $FILE);do
       echo "Name is $name"
done       
```
- You have to add proper location of the file and store that inside a variable (FILE in this case).
- `cat fileName.txt` reads a file and prints the output on the shell itself.

## for loop on an array
```bash
#!/bin/bash

myArray=( 1 2 3 Hello Hi )

length=${#myArray[*]}

for (( i=0;i<$length;i++ ));do
        echo "Value of array is ${myArray[$i]}"

done
```
## while loop
```bash 
#!/bin/bash

count=0
num=10

while [[ $count -le $num ]];do
	echo "Value of count var is $count"
	let count++
done

```
## until loops
- It is a special type of loop seen in shell scripting
```bash
#!/bin/bash

a=10

until [[ $a -eq 1 ]]
do
	echo "Value of a is $a"
	let a--
done
```
The loop will run until `a`'s value becomes equal to `1`.

## Infinite loop - using while loop
```bash
#!/bin/bash

while true
do
	echo "Hi"
	sleep 2s #will run every 2 sec
done
```
- This is how we write a infinite loop.
- `sleep 2s`: It will trigger the loop to run every 2 seconds.

## Infinite loop - using for loop
```bash
#!/bin/bash

for (( ;;  ))
do
	echo "Hi buddy"
	sleep 2s

done
```

## Reading a file using while loop
`names.txt`
```
Ryle
Max
Sourin
Oslo
Professor

```
Shell script:   
```bash
#!/bin/bash

# Reading a content from a file
while read myVar
do
	echo "Value from file is $myVar"
done < names.txt
```

# Functions
```bash
#!/bin/bash

function myFunc {
       echo "-------------"
       echo "Welcome"
       echo "-------------"

}

myFunc
myFunc
myFunc


## another way
welcomeNote(){
	echo "Hi there, please come in!!"
}
welcomeNote
welcomeNote
welcomeNote

```
# Function with arguments
```bash
#!/bin/bash

#ps: space after function-name is mandatory

function welcomeNote {
	echo "--------------------"
	echo "Welcome $1"

	echo "--------------------"
	echo "Age is $2"
}

welcomeNote Sourin 94 #calling the function with argument1 and argument2
welcomeNote Max 32 #calling the function with argument1 and argument2

```
# Arguments passing directly on the shell
```bash
#!/bin/bash

#to access the arguments

echo "First argument is $1"
echo "Second argument is $2"


echo "All the arguments are - $@" #prints all the args
echo "Number of arguments are - $#" #prints total number of args

```
- You will save the file and run it like this: `bash fileName.sh Hello 12`, `Hello` and `12` is the argument1 and argument2 in this case, which we are passing directly on the shell while we try to run the file.

# break & continue statement

## break 
```bash
#!/bin/bash

# example of break in a loop

read -p "Enter the number you want between 1 to 9: " no

for i in {1..9}
do
	#Break the loop if number found
	if [[ $no -eq $i ]]
	then
		echo "$no is found!!!"
		break
	fi
	echo "Number is $i"
done

```
When if statement will find the desired condition, it will execute brake statement and will stop the program.

## continue
```bash
#!/bin/bash


#Program to print odd numbers
for i in {1..10}
do
	let r=$i%2
	if [[ $r -eq 0 ]]
	then
		continue
	fi
	echo "Odd no. is $i"
done
```
The above is a shell script to print odd number, when if statement will satisfy its condition the particular condition will be skipped and will print the rest of the things.

# sleep/ exit/ `$?`
- `sleep` : We have discussed this previously, it creates a delay between two executions.
- `exit`: to stop the whole program at some certain point.
- `$1`: It is used to check if the previous command executed successfully or not. If it returns `0`, that means previous command ran successfully and exited with 0. If it returns `1`, that means previous command was not executed successfully.

# Connectivity Check
`ping -c 1 www.google.com`.

If it returns something like this `--- www.google.com ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 174.026/174.026/174.026/0.000 ms`. Then the connection is successful.

# Check if a file and directory exists
Will be using it inside a shell scipt, in a if else statement. I am showing the initial part only.

## directory
`if [ -d folederName ]`
`if [ ! -d folederName ]`

## file
`if [ -d fileName ]`
`if [ ! -d fileName ]`

# Bash Variables
`RANDOM`: Generates a random integer value from0 to 32767. 

`UID`: User Id of the user, that you are currently logged in as. (eg: For root user it will return 0)

# Login as root user
`sudo su -`: It will ask for your password, then will open root user mode. You can exit the mode by using `exit` command.

## What is root user?

# Redirection 
```bash
#!/bin/bash

ping -c 1 www.google.com > redirect.log

```

- When you run this script, you will not see any output on the terminal. A file named `redirect.log` will be created and the result will be saved in that file.

- `> redirect.log`: A new file is created where all the data will be saved.
- If you want to add any other data to the same file then you will have to use `>>` command, like:
```bash
#!/bin/bash

ping -c 1 www.google.com > redirect.log

date >> redirect.log
```
current date will be saved in the file again, below the previous data.
# Log messages
```bash
#!/bin/bash

logger "This is a log from ${0}"

```
The result will not be printed on the shell. It can be seen on the logger messages. 
### How to access log messages?
`sudo less var/log/messages` or `sudo less var/log/syslog` will show you the log messages.
# Debugging
```bash
#!/bin/bash

set -e
pwd
date
cd /root
hostname

```
- Adding `set -x` or `set -c` after `#!/bin/bash` line in any script will help you debugging it.

# Running a file in the background
- For that first of all you have to approve few permissions of the file:
`chmod +x fileName.sh`

then

`nohup ./fileName.sh`

- It will run the script in the background, it will not stop even after terminating the shell.
- It will create a nohup.out file, that you can read later using `cat nohup.out`.

# Automation
- You can set any task to run at a particular time by using `at` command. On the shell:

Step 1: run this `at 21:00 02 September`.

Step 2: you'll get some outputs like this:
```
warning: commands will be executed using /bin/sh
at Sat Sep  2 21:00:00 2023
at> 
```
Step 3: Then enter your task, eg: `bash home/Desktop/folederName/fileName.sh`.

Step 4: Press `Ctrl + D` to save and exit.

Your script will run at its scheduled time.

- `atq`: To see all the scheduled tasks, that has not been executed yet.

- `atrm`: To delete a scheduled task that has not been executed yet.

