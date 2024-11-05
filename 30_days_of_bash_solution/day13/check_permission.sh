#!/bin/bash

# Check if a filename was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Get the filename from the first argument
FILENAME="$1"

# Check if the file exists
if [ ! -e "$FILENAME" ]; then
  echo "File '$FILENAME' does not exist."
  exit 1
fi

# Get symbolic permissions
SYMBOLIC_PERMISSIONS=$(ls -l "$FILENAME" | awk '{print $1}')

# Get numeric permissions
NUMERIC_PERMISSIONS=$(stat -c "%a" "$FILENAME")

# Output permissions in symbolic and numeric formats
echo "Permissions for '$FILENAME':"
echo "Symbolic: $SYMBOLIC_PERMISSIONS"
echo "Numeric: $NUMERIC_PERMISSIONS"
