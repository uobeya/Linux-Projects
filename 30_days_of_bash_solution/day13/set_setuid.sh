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

# Check if the file is owned by root
if [ "$(stat -c "%U" "$FILENAME")" != "root" ]; then
  echo "File '$FILENAME' is not owned by root."
  exit 1
fi

# Check if the file is executable
if [ ! -x "$FILENAME" ]; then
  echo "File '$FILENAME' is not executable."
  exit 1
fi

# Set the setuid bit
chmod u+s "$FILENAME"
echo "Setuid bit has been set on '$FILENAME'."
