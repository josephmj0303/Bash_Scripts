Accept username & password
   a. password must be "alphanumeric"
    b. password must be "upper+lower case"


#!/bin/bash

# Ask for the username
echo "Please enter your username:"
read username

# Ask for the password
echo "Please enter your password (alphanumeric and contains both uppercase and lowercase characters):"
read -s password

# Check if password is alphanumeric and contains both uppercase and lowercase characters
if [[ ! $password =~ ^[[:alnum:]]+$ ]] || [[ ! $password =~ [A-Z] ]] || [[ ! $password =~ [a-z] ]]; then
    echo "Invalid password. Password must be alphanumeric and contain both uppercase and lowercase characters."
else
    echo "Password is valid."
fi

