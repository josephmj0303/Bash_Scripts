Write a shell script to print running process based of CPU utilization.

#!/bin/bash

# Print running processes based on CPU utilization
echo "Running processes sorted by CPU Utilization:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu

