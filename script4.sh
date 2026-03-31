#!/bin/bash
# Script 4: Log File Analyzer
# Author: Swastik Kaurav | Roll: 24BCE11076
# Course: Open Source Software
# Purpose: Reads a log file, counts occurrences of a keyword
#          and prints a summary with matching lines

# --- Take log file path and keyword from user as arguments ---
LOGFILE=${1:-"/var/log/syslog"}   # Default log file is syslog
KEYWORD=${2:-"error"}              # Default keyword is 'error'

COUNT=0                            # Counter starts at zero

echo "=================================="
echo "   Log File Analyzer"
echo "=================================="
echo ""
echo "Log File : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo ""

# --- Check if the log file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    echo "Try: ./script4.sh /var/log/syslog error"
    exit 1
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty. No lines to analyze."
    exit 1
fi

echo "--- Scanning file... ---"
echo ""

# --- Loop through each line of the file ---
while IFS= read -r LINE; do
    # Check if this line contains the keyword (case insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))   # Increase counter by 1
    fi
done < "$LOGFILE"

# --- Print summary ---
echo "=================================="
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "=================================="
echo ""

# --- Print last 5 matching lines ---
echo "--- Last 5 lines containing '$KEYWORD' ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "--- Analysis Complete ---"