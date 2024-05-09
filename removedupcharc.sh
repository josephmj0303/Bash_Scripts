Write a shell script to remove duplicate characters from a string

#!/bin/bash

# Ask for the string
echo "Please enter a string:"
read input_string

# Remove duplicate characters
output_string=$(echo "$input_string" | tr -d '[:space:]' | fold -w1 | sort -u | tr -d '\n')

echo "String after removing duplicates: $output_string"

