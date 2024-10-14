#!/bin/bash

# Author : Udeh Obeya
# Date : 14/10/2024

#  Write a `sed` command to swap the first and second words of each line in a file.

# Check if file is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# The file passed as argument
file="$1"

# Use sed to swap the first and second words of each line
sed -E 's/^([[:alnum:]]+)[[:space:]]+([[:alnum:]]+)/\2 \1/' "$file"


# -E: Enables extended regular expressions in sed.
# ^: Anchors the match to the beginning of the line.
# ([[:alnum:]]+): Matches the first word (sequence of alphanumeric characters).
# [[:space:]]+: Matches one or more spaces.
# ([[:alnum:]]+): Matches the second word.
# \2 \1: Swaps the second word (\2) with the first word (\1).
