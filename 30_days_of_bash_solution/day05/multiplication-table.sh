#!/bin/bash

# Author: Udeh Obeya
# Date : 06/10/2024
#  Write a script that uses a for loop to print the multiplication table for a given number (input by the user)

# Function to check if input is a valid number
is_number() {
    # Check if input is a number using a regular expression
    [[ "$1" =~ ^-?[0-9]+$ ]]
}

# Ask the user for input
read -p "Enter a number: " number

# Error checking for NaN (Not a Number)
if ! is_number "$number"; then
    echo "Error: '$number' is not a valid number. Please enter a valid integer."
    exit 1
fi

# Print the multiplication table
echo "Multiplication table for $number:"
for i in {1..20}; do
    echo "$number x $i = $((number * i))"
done

