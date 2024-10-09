#!/bin/bash

# Author: udeh Obeya
# Date : 09/10/2024


# Prompt the user for a number
echo "Enter a number:"
read num

# Check if the number is positive, negative, or zero
if (( num > 0 )); then
    echo "The number is positive."
elif (( num < 0 )); then
    echo "The number is negative."
else
    echo "The number is zero."
fi

