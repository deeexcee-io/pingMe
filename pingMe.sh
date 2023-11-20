#!/bin/bash

# List of IP addresses 

#CHANGE THESE WHERE NECESSARY
ip_addresses=(
	10.10.11.0
	10.10.10.0
)

ctrl_c() {
    echo "Ctrl+C was pressed. Exiting..."
    exit 1
}

# Set the trap to call the ctrl_c function when Ctrl+C is received
trap ctrl_c SIGINT

# Check if the current directory is not writable
if [ ! -w . ]; then
    printf "\n[!] tmp files need to be written and current directory is not writable\n[!] Please re-run as sudo or change current directory"
    sleep 2
    exit 1
fi

# Loop through the IP addresses
printf "\n[+] Scanning subnets\n"
# Start scanning the subnets
for ip_address in "${ip_addresses[@]}"; do
	ip_rm=$(echo "$ip_address" | awk -F "." '{print $1"."$2"."$3}')
        	for x in {1..254}; do
            		ping -c 1 "$ip_rm.$x" > /dev/null && echo "[+] $ip_rm.$x is up" >> tmp.txt &
        	done
        wait
done
cat tmp.txt | sort -n|sort -u && rm tmp.txt
