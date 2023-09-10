#!/bin/bash

# List of IP addresses 

#CHANGE THESE WHERE NECESSARY
ip_addresses=(
	10.100.10.0
	10.100.11.0
	10.100.12.0
	10.100.13.0
	10.100.14.0
	10.100.15.0
	10.100.16.0
	10.100.17.0
	10.100.18.0
	10.100.19.0
	10.100.20.0
	10.120.10.0
	10.120.11.0
	10.120.12.0
	10.120.13.0
	10.120.14.0
	10.120.15.0
	10.120.16.0
	10.120.17.0
	10.120.18.0
	10.120.19.0
	10.120.20.0
)

ctrl_c() {
    echo "Ctrl+C was pressed. Exiting..."
    exit 1
}

# Set the trap to call the ctrl_c function when Ctrl+C is received
trap ctrl_c SIGINT


# Loop through the IP addresses
for ip_address in "${ip_addresses[@]}"; do
	printf "\n\nNow Scanning $ip_address /24 \n\n"
	ip_rm=$(echo $ip_address | awk -F "." '{print $1"."$2"."$3}')
	for x in {1..255};do
		ping -c 1 $ip_rm.$x > /dev/null && printf "\n[+] $ip_rm.$x is up \n\n" &
	done
done
