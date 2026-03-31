#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Swastik Kaurav | Roll: 24BCE11076
# Course: Open Source Software
# Purpose: Loops through important Linux directories and reports
#          their size and permissions

# --- List of important directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=================================="
echo "   Directory Audit Report"
echo "=================================="
echo ""

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    # Check if the directory exists
    if [ -d "$DIR" ]; then
        # Get permissions, owner, and group using ls
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get size of directory, suppress errors
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Directory : $DIR"
        echo "Permissions & Owner : $PERMS"
        echo "Size      : $SIZE"
        echo "-----------------------------------"
    else
        # If directory doesn't exist, say so
        echo "$DIR does not exist on this system"
        echo "-----------------------------------"
    fi
done

# --- Check Python specific directories ---
echo ""
echo "=================================="
echo "   Python Installation Audit"
echo "=================================="
echo ""

# List of directories where Python typically lives
PYTHON_DIRS=("/usr/bin/python3" "/usr/lib/python3" "/etc/python3")

for PDIR in "${PYTHON_DIRS[@]}"; do
    if [ -e "$PDIR" ]; then
        # Get permissions of Python directory/file
        PERMS=$(ls -ld "$PDIR" | awk '{print $1, $3, $4}')
        echo "✓ Found   : $PDIR"
        echo "  Permissions: $PERMS"
        echo "-----------------------------------"
    else
        echo "✗ Not found: $PDIR"
        echo "-----------------------------------"
    fi
done