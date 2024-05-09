1. Write a shell script to print server details.
Name:
Memory:
CPU:
Disk


#!/bin/bash

# Print server name
echo "Name: $(hostname)"

# Print Memory details
echo "Memory:"
free -h

# Print CPU details
echo "CPU:"
lscpu

# Print Disk details
echo "Disk:"
df -h

