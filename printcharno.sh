Write a shell script to accept string from the user, then print numbers of characters count along with its letter

#!/bin/bash

# Ask for the string
echo "Please enter a string:"
read input_string

# Initialize an associative array
declare -A char_count

# Loop over each character in the string
for ((i=0; i<${#input_string}; i++)); do
    char=${input_string:$i:1}
    ((char_count["$char"]++))
done

# Print the count of each character
for char in "${!char_count[@]}"; do
    echo "Character '$char' appears ${char_count["$char"]} times."
done

