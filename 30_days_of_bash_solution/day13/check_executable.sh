#!/bin/bash

# Check if a filename was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Assign the filename to a variable
FILE=$1

# Check if the file exists
if [ ! -e "$FILE" ]; then
  echo "File does not exist: $FILE"
  exit 1
fi

# Check if the file is executable
if [ -x "$FILE" ]; then
  echo "File is already executable: $FILE"
else
  # Make the file executable
  chmod +x "$FILE"
  echo "File is now executable: $FILE"
fi
