$ cat day03
#!/bin/bash

# Author : Udeh Obeya
# Date : 09/10/2024

# read name prompts the user to enter their name and stores it in the name variable.
# read age prompts the user to enter their age and stores it in the age variable.
# The echo command is used to print a greeting that includes the user's name and age.

# Ask for the user's name
echo "Please enter your name:"
read name

# Ask for the user's age
echo "Please enter your age:"
read age

# Print a greeting message
echo "Hello, $name! You are $age years old."
