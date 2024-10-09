#!/bin/bash

# Author : Udeh Obeya
# Date : Udeh Obeya

# script that uses command substitution to retrieve the current user, current directory, and current date/time, then prints this 
# information in a formatted manner:

# Get current user
current_user=$(whoami)

# Get current directory
current_directory=$(pwd)

# Get current date and time
current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Print the formatted output
echo "*****-----------------------------------*****"
echo "*****-----------------------------------*****"
echo "---------------------------------------------"
echo "Current User        : $current_user"
echo "Current Directory   : $current_directory"
echo "Current Date/Time   : $current_datetime"
echo "---------------------------------------------"
echo "*****-----------------------------------*****"
echo "*****-----------------------------------*****"
