#!/bin/bash

# Author: Udeh Obeya
# Date : 06/10/2024
#  Create a script that uses a while loop to simulate a simple guessing game. Generate a random number between 1 and 15, and let the user guess until they get it right.



# Generate a random number between 1 and 15
random_number=$(( RANDOM % 15 + 1 ))

# Initialize the user's guess
guess=0

# Start the guessing loop
while [ "$guess" -ne "$random_number" ]; do
    read -p "Guess the number (between 1 and 10): " guess
    
    # Check if the guess is a valid number between 1 and 10
    if ! [[ "$guess" =~ ^[1-9]$|^10$ ]]; then
        echo "Invalid input. Please enter a number between 1 and 15."
        continue
    fi

    # Check if the guess is too high, too low, or correct
    if [ "$guess" -lt "$random_number" ]; then
        echo "Too low!"
    elif [ "$guess" -gt "$random_number" ]; then
        echo "Too high!"
    else
        echo "Congratulations! You guessed it right."
    fi
done
 
