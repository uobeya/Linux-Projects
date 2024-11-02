#!/usr/bin/awk -f

# This script counts the occurrences of each unique IP address in a log file.
# ./count_ips.awk log_file.txt to execute  this script

{
    # Assuming the IP address is the first field in each line
    ip_address = $1
    
    # Increment the count for the corresponding IP address
    ip_count[ip_address]++;
}

END {
    # Print the results
    print "IP Address\tOccurrences"
    print "--------------------------"
    for (ip in ip_count) {
        printf "%s\t\t%d\n", ip, ip_count[ip];
    }
}
