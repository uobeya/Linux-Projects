#!/bin/bash

# Author  : Udeh Obeya
# Date : 06/10/2024
# Create a script that uses a while loop to calculate the factorial of a number input by the user.

# Function to check if the input is a valid positive integer
is_number() {
    [[ "$1" =~ ^[0-9]+$ ]]
}

# Ask the user for input
read -p "Enter a non-negative integer: " number

# Error checking for non-numeric or negative input
if ! is_number "$number" || [ "$number" -lt 0 ]; then
    echo "Error: Please enter a valid non-negative integer."
    exit 1
fi

# Initialize factorial result and counter
factorial=1
counter=$number

# Calculate factorial using a while loop
while [ "$counter" -gt 1 ]; do
    factorial=$((factorial * counter))
    counter=$((counter - 1))
done

# Output the result
echo "The factorial of $number is: $factorial"

