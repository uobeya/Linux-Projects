#!/bin/bash

# Define the log file for errors
error_log="error.log"

# Execute the command and redirect errors to the log file
# Normal output is shown on the screen
command="ls /main_one"  # Replace this with your desired command

$command 2>> $error_log

# Optionally, confirm that errors (if any) were logged
echo "Errors (if any) were logged to '$error_log'."
