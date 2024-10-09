#!/bin/bash

 
 # Ask for user input
 read -p "Enter the text you want to append: " user_input

 
 # Specify the file (change 'output.txt' to the file name you want)
 file="output.txt"

 
 # Check if the file exists; if not, it will be created
 if [[ ! -f $file ]]; then
    touch "$file"
    echo "File '$file' created."
 fi

 
 # Append the user's input to the file
 echo "$user_input" >> "$file"

 echo "Text appended to $file."
