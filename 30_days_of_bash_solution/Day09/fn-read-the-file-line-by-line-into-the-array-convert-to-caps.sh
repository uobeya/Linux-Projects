#!/bin/bash

# Initialize am empty array
lines=()


# Read the file line by line into     the array
while IFS= read -r line; do
	# Convert each line to uppercase and store it in thearrat
	lines+=("$(echo "$line" | tr '[:lower:]' '[:upper:]')")
done < "$1"  # the file is passed a a command line argument e.g fn-name.sh input.txt



# Print each line from the array
for line in "${lines[@]}"; do
	echo "$line"
done
