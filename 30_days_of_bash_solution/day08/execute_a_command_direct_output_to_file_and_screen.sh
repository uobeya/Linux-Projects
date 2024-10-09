#!/bin/bash


# Command whose output you want to redirect and display
command="ls -a"


# Output file
output_file="output.txt"


# Execute the command, redirect output to both file and screen
$command | tee "$output_file"
