#!/bin/bash
# Script: bdix_install.sh
# Author: [Your Name]
# Description: Installs and configures redsocks for BDIX on OpenWRT.

# Display coder information
echo "Re:Developed by [KZTanvir]]"
echo "GitHub: https://github.com/KZTanvir"
echo "Forked From: BDIX-OpenWrt by [emonbhuiyan]"

# Update package
opkg update

# Install required packages
opkg install iptables iptables-mod-nat-extra redsocks

# Backup existing redsocks configuration
service redsocks stop
mv /etc/redsocks.conf /etc/redsocks.conf.bkp

# Download and replace redsocks configuration with bdix.conf
cd /etc
wget https://github.com/emonbhuiyan/BDIX-OpenWRT/raw/main/bdix.conf

# Download domains and IP filtering lists
wget https://github.com/emonbhuiyan/BDIX-OpenWRT/raw/main/whitelistDomain.txt
wget https://github.com/emonbhuiyan/BDIX-OpenWRT/raw/main/whitelistDK.txt
wget https://github.com/emonbhuiyan/BDIX-OpenWRT/raw/main/whitelistIP.txt

# Backup existing redsocks init script
mv /etc/init.d/redsocks /etc/init.d/redsocks.bkp

# Download and replace redsocks init script with bdix
cd /etc/init.d
wget https://github.com/emonbhuiyan/BDIX-OpenWRT/raw/main/bdix
chmod +x /etc/init.d/bdix

# Clean up and display a message
cd /
clear
echo -e "Installation complete!\n"
echo -e "Please Edit those 3 files to whitelist domains, domain-keywords and IP addresses\n"
