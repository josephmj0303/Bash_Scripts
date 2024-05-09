Write a shell script to loop based on number of files in current directory

#!/bin/bash

# Get the list of files
files=( * )

# Loop over the files
for ((i=0; i<${#files[@]}; i++)); do
    # Print the current iteration and file name
    echo "File $((i+1)): ${files[$i]}"
done

