#!/bin/bash

# Check if the input file is provided as an argument
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"
output_file="sorted_numbers.txt"

# Check if the input file exists
if [[ ! -f "$input_file" ]]; then
    echo "Error: File '$input_file' not found!"
    exit 1
fi

# Read numbers from the input file, sort them, and write to the output file
sort -n "$input_file" > "$output_file"

echo "The numbers have been sorted and written to '$output_file'."
