#!/bin/bash



awk '{for(i=1;i<=NF;i++) if($i ~ /[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}/) print $i}' file.txt
