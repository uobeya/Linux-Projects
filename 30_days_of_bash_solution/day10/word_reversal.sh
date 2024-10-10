#!/bin/bash

# Author: Udeh Obeya 
# Date : 10/10/2024

# This script takes a sentence as input, reverses each word in the sentence, and then prints the result
# Ask the user for a sentence
echo "Please enter a sentence:"
read sentence

# Function to reverse a word
reverse_word() {
    echo "$1" | rev
}

# Process the sentence word by word
for word in $sentence; do
    # Reverse each word and store in the reversed_sentence
    reversed_sentence="$reversed_sentence $(reverse_word $word)"
done

# Output the reversed sentence
echo "Reversed words in the sentence: $reversed_sentence"
