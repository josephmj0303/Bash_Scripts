Write a shell script to find your server IPV4 address, validate IPV4 address format only.
	b. Filter only IPV6

#!/bin/bash

# Get all IP addresses
ip_addresses=$(hostname -I)

# Split into array
IFS=' ' read -ra ADDR <<< "$ip_addresses"

# Loop over addresses
for ip in "${ADDR[@]}"; do
    # Check if IP address is IPv4
    if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo "IPv4 address: $ip"
    fi

    # Check if IP address is IPv6
    if [[ $ip =~ ^([0-9a-fA-F]{0,4}:){1,7}[0-9a-fA-F]{0,4}$ ]]; then
        echo "IPv6 address: $ip"
    fi
done
