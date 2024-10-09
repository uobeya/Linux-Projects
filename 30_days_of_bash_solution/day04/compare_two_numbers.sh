#!/bin/bash

# Author : Udeh Obeya
# Date: 09/10/2024


# This script first checks if exactly two arguments are provided.
# It uses bc (basic calculation) for comparing the numbers to handle both integers and floating-point numbers.
# Based on the comparison, it prints whether the first number is greater than, less than, or equal to the second.

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi

# Read the numbers from command-line arguments
num1=$1
num2=$2

# Compare the numbers
if [ "$num1" -gt "$num2" ]; then
    echo "$num1 is greater than $num2"
elif [ "$num1" -lt "$num2" ]; then
    echo "$num1 is less than $num2"
else
    echo "$num1 is equal to $num2"
fi
