#!/bin/bash

# Author : Udeh
# Date : 10/10/2024

# script that takes a filename as input and adds a prefix (e.g., "processed_") to the filename:

# Ask for the filename
echo "Please enter the filename:"
read filename

# Check if the file exists
if [ -f "$filename" ]; then
    # Extract the directory and filename parts
    directory=$(dirname "$filename")
    base_filename=$(basename "$filename")
    
    # Add the prefix to the filename
    new_filename="${directory}/processed_${base_filename}"
    
    # Rename the file
    mv "$filename" "$new_filename"
    
    # Output the new filename
    echo "File has been renamed to: $new_filename"
else
    echo "Error: File '$filename' does not exist."
fi
