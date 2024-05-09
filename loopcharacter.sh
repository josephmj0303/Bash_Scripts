Write a shell script to loop based on number of characters in a string.

#!/bin/bash

# Ask for the string
echo "Please enter a string:"
read input_string

# Get the length of the string
length=${#input_string}

# Loop based on the number of characters in the string
for ((i=0; i<$length; i++)); do
    # Print the current iteration
    echo "Iteration: $((i+1))"
done

for i in `echo $myvar | fold -w1`; do echo "myvar is $i"; 

done
