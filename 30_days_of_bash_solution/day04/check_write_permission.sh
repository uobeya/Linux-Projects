#!/bin/bash

# Author : Udeh Obeya
# Date: 09/10/2024

# This script prompts the user to enter a filename.
# It checks if the file exists using -e
# It also checks if the user has write permission using -w
# echo a message base on the above steps

# Prompt the user for a filename
echo "Enter the filename to check for write permission:"
read filename

# Check if the file exists
if [ ! -e "$filename" ]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi

# Check for write permission
if [ -w "$filename" ]; then
    echo "You have write permission for '$filename'."
else
    echo "You do not have write permission for '$filename'."
fi
