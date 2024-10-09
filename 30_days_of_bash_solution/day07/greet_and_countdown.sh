#!/bin/bash

# Script: greet_and_countdown.sh
# Description: This script demonstrates basic Bash scripting concepts with a user-provided name
# Author: Udeh Obeya
# Date: 2024-09-25

# Global variables
NAME=$1
GREETING="Hello, $NAME!"
#MAX_COUNT=10
LOG_FILE="script_output.log"  # Specify the log file name

# Functions
print_greeting() {
    echo "$GREETING"
}

#count_down() {
#    local count=$1
#    while [ $count -gt 0 ]; do
#        echo $count
#        count=$((count - 1))
#        sleep 1
#    done
#    echo "Success!"
#}

count_down() {
    local count=$1

    # Error handling for positive integer input
    if ! [[ "$count" =~ ^[0-9]+$ ]] || [ "$count" -le 0 ]; then
        echo "Error: Please provide a positive integer."
        exit 1
    fi

    while [ $count -gt 0 ]; do
        echo $count
        count=$((count - 1))
        sleep 1
    done
    echo "Success!"
}

generate_random_number() {
    echo $((RANDOM % 10 + 1))
}

# Menu Function
show_menu() {
    echo "Please choose an option:"
    echo "1) Print Greeting"
    echo "2) Generate Random Number"
    echo "3) Count Down"
    echo "4) Exit"
}


# Main script execution starts here
if [ -z "$NAME" ]; then
    echo "Usage: $0 <name>" | tee -a "$LOG_FILE"
    exit 1
fi

#Starting logging
{
echo "Starting the script..."

while true; do
	show_menu
	read -rp "Enter your choice [1-4]: " choice

	case $choice in
		1)
			print_greeting | tee -a "$LOG_FILE"
			;;
		2)
			RANDOM_COUNT=$(generate_random_number)
                	echo "Generated random number: $RANDOM_COUNT" | tee -a "$LOG_FILE"
                	;;
		3)
			RANDOM_COUNT=$(generate_random_number)
                	echo "Counting down from $RANDOM_COUNT" | tee -a "$LOG_FILE"
                	count_down $RANDOM_COUNT | tee -a "$LOG_FILE"
                	;;
		4)
			echo "Exiting the script." | tee -a "$LOG_FILE"
                	exit 0
                	;;
		*)
			echo "Invalid choice. Please try again." | tee -a "$LOG_FILE"
                	;;
	esac
done
} | tee -a "$LOG_FILE"  # Log all output to the log file
