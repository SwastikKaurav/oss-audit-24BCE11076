#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Swastik Kaurav | Roll: 24BCE11076
# Course: Open Source Software
# Purpose: Checks if Python is installed and displays its details

# --- Define the package to check ---
PACKAGE="python3"

# --- Check if Python is installed using which command ---
if which $PACKAGE &>/dev/null; then
    # If installed, show version and location
    echo "✓ $PACKAGE is installed on this system."
    echo ""
    echo "--- Package Details ---"
    python3 --version                    # Shows Python version
    echo "Location: $(which python3)"   # Shows where Python is installed
    echo "License : PSF License (Python Software Foundation)"
    echo ""

    # Check if pip is also installed
    if which pip3 &>/dev/null; then
        echo "✓ pip3 is also installed (Python package manager)"
        echo "pip version: $(pip3 --version)"
    else
        echo "✗ pip3 is not installed"
    fi

else
    # If not installed, show installation instruction
    echo "✗ $PACKAGE is NOT installed."
    echo "To install it, run: sudo apt install python3"
fi

# --- Case statement: philosophy note about each software ---
case $PACKAGE in
    python3)
        echo ""
        echo "--- Philosophy Note ---"
        echo "Python: Created by Guido van Rossum in 1991."
        echo "Built on the belief that code should be readable"
        echo "and accessible to everyone, not just experts."
        ;;
    httpd)
        echo "Apache: the web server that built the open internet"
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps"
        ;;
    vlc)
        echo "VLC: born in a university, free for the whole world"
        ;;
    git)
        echo "Git: built by Linus when proprietary tools let him down"
        ;;
esac