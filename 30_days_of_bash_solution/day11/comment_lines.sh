#!/bin/bash

# Author : Udeh Obeya
# Date 14/10/2024

#  Create a script that uses `sed` to comment out all lines in a configuration file that start with a specific word (e.g., "DEBUG").

# Check if the correct number of arguments is provided (filename and word)
if [ $# -ne 2 ]; then
  echo "Usage: $0 filename word"
  exit 1
fi

# Assign input arguments to variables
filename="$1"
word="$2"

# Use sed to comment out lines starting with the specific word
sed -i "/^$word/s/^/# /" "$filename"


# ^$word matches lines that start with the word provided as an argument.
# s/^/# / is the sed substitution command, which adds # at the beginning of lines that match the pattern.
# -i makes the changes in-place, so the file is modified directly.
