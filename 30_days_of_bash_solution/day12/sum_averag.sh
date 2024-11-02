#!/bin/bash

#########################
# The script expects two arguments: the filename and the column number.
# ./sum_averag.sh data1.csv 2
#########################


# Check if the user has provided a file name and a column number
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 filename column_number"
    exit 1
fi

# Assign input parameters to variables
filename=$1
column=$2

# Check if the file exists
if [[ ! -f "$filename" ]]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Calculate sum and average using awk
awk -F, -v col="$column" '
BEGIN { sum = 0; count = 0 }
{
    if ($col ~ /^[0-9]+([.][0-9]+)?$/) { # Checks if the field is a number
        sum += $col;
        count++;
    }
}
END {
    if (count > 0) {
        print "Sum:", sum;
        print "Average:", sum / count;
    } else {
        print "No numeric data found in column", col
    }
}
' "$filename"



