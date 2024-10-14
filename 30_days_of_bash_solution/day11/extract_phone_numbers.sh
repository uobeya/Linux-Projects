#!/bin/bash

# Author : Udeh Obeya
# Date : 14/10/2024

# Use `sed` to extract all phone numbers from a file, assuming they are in the format (xxxx) xxx-xxxx.

# File to process
file=$1

# Use sed to extract phone numbers in the format (xxxx) xxx-xxxx
sed -n 's/.*\(([^) ]*) [0-9]\{3\}-[0-9]\{4\}\).*/\1/p' "$file"


# -n: Suppresses automatic printing of lines.
# s/.*\(([^) ]*) [0-9]\{3\}-[0-9]\{4\}\).*/\1/p:
# .* matches any text before the phone number.
# \(([^) ]*) [0-9]\{3\}-[0-9]\{4\}\): This matches the phone number in the format (xxxx) xxx-xxxx:
# \(([^) ]*)\) matches (xxxx) where xxxx can be any 4 digits.
# [0-9]\{3\} matches the next 3 digits.
# - matches the hyphen.
# [0-9]\{4\} matches the final 4 digits.
# \1: Refers to the matched phone number.
# p: Prints the extracted phone number.
