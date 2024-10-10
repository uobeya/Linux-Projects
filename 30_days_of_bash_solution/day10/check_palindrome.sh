#!/bin/bash

# Author : Udeh Obeya
# Date : 10/10/2024

# function that checks if a given string is a palindrome. A palindrome is a word, phrase, or sequence that reads 
# the same backward as forward

# Function to check if a string is a palindrome
is_palindrome() {
    local input_string="$1"
    
    # Remove spaces and convert to lowercase
    local cleaned_string=$(echo "$input_string" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')
    
    # Get the length of the cleaned string
    local length=${#cleaned_string}
    
    # Loop through half of the string to compare characters
    for (( i=0; i<length/2; i++ )); do
        if [[ "${cleaned_string:$i:1}" != "${cleaned_string: -$((i + 1)):1}" ]]; then
            echo "false"
            return
        fi
    done
    
    echo "true"
}

# Ask for user input
read -p "Enter a string: " user_input

# Check if the string is a palindrome
result=$(is_palindrome "$user_input")
echo "Is the string a palindrome? $result"
