Write a shell script to accept input from user as their username only. 
   a. username must be 'string'
   b. username must be 'UPPERCASE'
   c. username should not contain spaces

#!/bin/bash

# Ask for the username
echo "Please enter your username (UPPERCASE and no spaces):"
read username

# Check if username is a string
if [[ ! $username =~ ^[A-Z]+$ ]]; then
    echo "Invalid username. Username must be a string, in UPPERCASE, and should not contain spaces."
else
    echo "Username is valid."
fi
