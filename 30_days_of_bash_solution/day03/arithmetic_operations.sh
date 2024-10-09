#!/bin/bash

# Author : Udeh
# Date : 09/10/2024

#  script that takes two numbers as command-line arguments, stores them in variables, and performs addition, subtraction,
#  multiplication, and division

# Check if exactly two arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: You must provide exactly two numbers as arguments."
    echo "Usage: $0 num1 num2"
    exit 1
fi

# Store the arguments in variables
num1=$1
num2=$2

# Perform arithmetic operations
sum=$((num1 + num2))
difference=$((num1 - num2))
product=$((num1 * num2))

# For division, check if the second number is not zero
if [ "$num2" -ne 0 ]; then
    quotient=$((num1 / num2))
else
    quotient="undefined (division by zero)"
fi

# Display the results
echo "Addition: $num1 + $num2 = $sum"
echo "Subtraction: $num1 - $num2 = $difference"
echo "Multiplication: $num1 * $num2 = $product"
echo "Division: $num1 / $num2 = $quotient"
