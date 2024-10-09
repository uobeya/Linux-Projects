#!/bin/bash

# Author : Udeh Obeya
# Date : 09/10/2024

# This script first prompts the user to input their age and name.
# It uses an if statement to check if the age is 18 or older (-ge 18) and if the name is "Admin" (== "Admin").
# If both conditions are met, it prints "Access granted." Otherwise, it prints "Access denied."

#Prompt the user for their age
echo "Please enter your age:"
read age

# Prompt the user for their name
echo "Please enter your name:"
read name

# Check conditions for access
if [ "$age" -ge 18 ] && [ "$name" == "Admin" ]; then
    echo "Access granted."
else
    echo "Access denied."
fi
