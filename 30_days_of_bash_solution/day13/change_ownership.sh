#!/bin/bash

# Check if a directory was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 directory"
  exit 1
fi

# Get the directory path and current user
DIRECTORY="$1"
CURRENT_USER=$(whoami)

# Check if the directory exists
if [ ! -d "$DIRECTORY" ]; then
  echo "Directory '$DIRECTORY' does not exist."
  exit 1
fi

# Check if the current user has write permission on the directory
if [ ! -w "$DIRECTORY" ]; then
  echo "You do not have write permission on the directory '$DIRECTORY'."
  exit 1
fi

# Change ownership of all files in the directory to the current user
chown "$CURRENT_USER":"$CURRENT_USER" "$DIRECTORY"/*

echo "Ownership of all files in '$DIRECTORY' has been changed to $CURRENT_USER."
