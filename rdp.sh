#!/bin/bash

# Function to prompt user for input
prompt_for_input() {
  read -p "Enter the IP Address: " IP
  read -p "Enter the Username: " USER
  read -p "Enter the Domain: " DOMAIN
  read -sp "Enter the Password: " PASS
  echo
}

# Declare option variables
IP=
USER=
DOMAIN=
PASS=

# Parse command-line arguments
while getopts ":i:u:d:" opt; do
  case $opt in
    i) IP="$OPTARG";;
    u) USER="$OPTARG";;
    d) DOMAIN="$OPTARG";;
    *) echo "Invalid option: -$OPTARG"; exit 1;;
  esac
done

# Prompt for missing inputs
if [ -z "$IP" ] || [ -z "$USER" ] || [ -z "$DOMAIN" ]; then
  echo "Some required arguments are missing. Prompting for input..."
  prompt_for_input
else
  # Prompt for password if it wasn't provided earlier
  if [ -z "$PASS" ]; then
    read -sp "Enter the Password: " PASS
    echo
  fi
fi

# Start xfreerdp3 with user-provided values
xfreerdp3 +dynamic-resolution +window-drag /w:1440 /h:900 /v:"$IP" /u:"$USER" /d:"$DOMAIN" /p:"$PASS" >/dev/null 2>&1 &
