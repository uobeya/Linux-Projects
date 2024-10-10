#!/bin/bash

# Author: Udeh Obeya
# Date : 10/10/2024

# This script generates a random password of a specified length, ensuring it contains at least one uppercase letter, one number, 
# and one special character

# Function to generate a random password
generate_password() {
    local length="$1"
    local password=""

    # Character sets
    local upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local lower="abcdefghijklmnopqrstuvwxyz"
    local numbers="0123456789"
    local special="!@#$%^&*()-_=+[]{}|;:,.<>?/"

    # Ensure the password contains at least one of each required character type
    password+=$(echo $upper | fold -w1 | shuf -n1) # Add a random uppercase letter
    password+=$(echo $numbers | fold -w1 | shuf -n1) # Add a random number
    password+=$(echo $special | fold -w1 | shuf -n1) # Add a random special character

    # Generate the rest of the password
    for (( i=3; i<length; i++ )); do
        password+=$(echo $lower$upper$numbers$special | fold -w1 | shuf -n1)
    done

    # Shuffle the password to randomize the order
    password=$(echo "$password" | fold -w1 | shuf | tr -d '\n')

    echo "$password"
}

# Ask for the desired password length
read -p "Enter the desired password length (minimum 8): " length

# Validate the length
if [[ "$length" -lt 8 ]]; then
    echo "Password length should be at least 8 characters."
    exit 1
fi

# Generate and print the password
password=$(generate_password "$length")
echo "Generated Password: $password"
