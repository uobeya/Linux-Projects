#!/bin/bash

# Store command line arguments in an array
args=("$@")

# Get the number of arguments
num_arguments=$#

# Print the number of arguments
echo "Number of arguments: $num_arguments"

# Loop through the array and print each  argument with its index
for (( i=0; i<$num_arguments; i++ )); do
	echo "Argument $((i+1)): ${args[$i]}"
done
