#!/bin/bash
# Script 1: System Identity Report
# Author: Swastik Kaurav | Roll: 24BCE11076
# Course: Open Source Software
# Purpose: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="Swastik Kaurav"
ROLL_NUMBER="24BCE11076"
SOFTWARE_CHOICE="Python"

# --- Collecting system information ---
KERNEL=$(uname -r)           # Gets the Linux kernel version
USER_NAME=$(whoami)          # Gets the current logged in user
UPTIME=$(uptime -p)          # Gets how long system has been running
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')  # Gets distro name
CURRENT_DATE=$(date)         # Gets current date and time

# --- Display the report ---
echo "=================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "   Roll Number: $ROLL_NUMBER"
echo "=================================="
echo ""
echo "Software Being Audited : $SOFTWARE_CHOICE"
echo "Linux Distribution     : $DISTRO"
echo "Kernel Version         : $KERNEL"
echo "Logged in as           : $USER_NAME"
echo "System Uptime          : $UPTIME"
echo "Current Date & Time    : $CURRENT_DATE"
echo ""
echo "=================================="
echo " Python is licensed under the PSF License"
echo " (Python Software Foundation License)"
echo " It is free and open source software."
echo "=================================="