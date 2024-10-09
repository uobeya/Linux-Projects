#!/bin/bash

# Author : Udeh Obeya
# Date : 06/10/2024
# Write a script that uses a for loop to iterate through all the files in the current directory and print their names and sizes.



# Iterate through all files in the current directory
for file in *; do
    # Check if it is a regular file
    if [ -f "$file" ]; then
        # Get the file size
        filesize=$(stat -c%s "$file")
        # Print the file name and size
        echo "File: $file | Size: $filesize bytes"
    fi
done
 
