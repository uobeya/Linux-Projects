#!/bin/bash

# Author : Udeh Obeya
# Date : 06/10/2024
# Write a script that uses nested for loops to create a simple multiplication table for numbers 1 through 10

# Outer loop for rows (numbers 1 to 10)
for i in {1..10}; do
    # Inner loop for columns (numbers 1 to 5)
    for j in {1..10}; do
        # Calculate and print the product
        result=$((i * j))
        # Print the result in a formatted way, right-aligned to 4 spaces
        printf "%4d" $result
    done
    # Move to the next line after each row is printed
    echo
done
