#!/bin/bash

# Author: Udeh Obeya
# Date: 09/10/2024

# Prompt the user for a filename
echo "Enter the filename:"
read filename

# Check if the file exists
if [ -e "$filename" ]; then
    echo "File '$filename' exists. Here are its contents:"
    cat "$filename"
else
    echo "File '$filename' does not exist. Creating it with default text..."
    echo "This is the default content of the file." > "$filename"
    echo "File '$filename' has been created with default content."
fi
