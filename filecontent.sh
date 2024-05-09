Write a shell script to print file content details. 
Like No of Words, lines, characters.  You must accept input from the user.

#!/bin/bash

# Prompt the user for a filename
echo "Please enter the filename:"
read filename

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found!"
    exit 1
fi

# Use wc to count the number of lines, words, and characters
lines=$(wc -l < "$filename")
words=$(wc -w < "$filename")
chars=$(wc -m < "$filename")

# Print the results
echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $chars"
