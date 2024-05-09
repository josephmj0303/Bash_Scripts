Write a shell script not to accept if variable values are empty 

#!/bin/bash

# Ask for the variable
echo "Please enter a value:"
read var

# Check if variable is empty
if [ -z "$var" ]; then
    echo "Empty value is not accepted. Exiting..."
    exit 1
fi

echo "You entered: $var"
