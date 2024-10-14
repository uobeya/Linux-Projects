#!/bin/bash

# Author : Udeh Obeya
# Date : 14/10/2024

#  Write a `sed` command to swap the first and second words of each line in a file.
#  <[^>]*> is a regular expression that matches anything between < and >, which corresponds to HTML tags.
#  s/<[^>]*>//g is the sed substitute command that replaces all occurrences of the matched tags with nothing (i.e., removes them).

# File to process
file=$1

# Use sed to remove all HTML tags
sed 's/<[^>]*>//g' "$file"
