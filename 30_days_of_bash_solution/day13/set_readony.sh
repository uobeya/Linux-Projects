#!/bin/bash

# Define the directory. Update this to the target directory path.
DIRECTORY="/PROJECT-BASE/my_project/day13"

# Find all .txt files in the specified directory and change their permissions to 444 (read-only for all users)
find "$DIRECTORY" -type f -name "*.txt" -exec chmod 444 {} \;

echo "Permissions for all .txt files in $DIRECTORY have been set to read-only."
