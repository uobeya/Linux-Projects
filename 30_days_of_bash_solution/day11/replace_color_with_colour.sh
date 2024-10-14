#!/bin/bash

# Author : Udeh Obeya
# Date : 12/10/2024

# To replace all occurrences of the whole word "color" with "colour" using sed in a bash script, while ensuring that only the 
# exact word is matched (not as part of another word), you can use word boundaries (\b in regular expressions).

# File to perform replacement in. the expect a file path as an input argument.
file=$1

# Use sed to replace whole word "color" with "colour"
sed -i 's/\bcolor\b/colour/g' "$file"


# \b is a word boundary anchor, ensuring that color is treated as a whole word.
# s/\bcolor\b/colour/g performs the substitution globally on each line.
# The -i flag modifies the file in-place.
