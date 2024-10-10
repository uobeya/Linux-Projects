#!/bin/bash

# Author : Udeh Obeya
# Date : 10/10/2024

# This script count the number of vowels in a given word or sentence

# Function to count vowels in a string
count_vowels() {
    local string="$1"
    local count=0
    
    # Loop through each character in the string
    for (( i=0; i<${#string}; i++ )); do
        char="${string:$i:1}"
        
        # Check if the character is a vowel (case-insensitive)
        if [[ "$char" =~ [aeiouAEIOU] ]]; then
            ((count++))
        fi
    done
    
    echo "Number of vowels: $count"
}

# Ask for user input
echo "Please enter a string:"
read input_string

# Call the function with the user input
count_vowels "$input_string"
