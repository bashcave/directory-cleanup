#!/bin/bash

# Directory Cleanup Tool
# Deletes files older than a specified number of days in a given directory.
#
# @author BASHCAVE
# @version 1.0.0
# @license MIT

echo "Directory Cleanup Tool"
read -p "Enter the directory path: " directory
read -p "Enter the number of days (files older than this will be deleted): " days

# Safety check: prevent dangerous or unintended deletion.
if [[ -z "$directory" || -z "$days" ]]; then
    echo "Error: Directory path and days must be specified."
    exit 1
fi

if ! [[ "$days" =~ ^[0-9]+$ ]]; then
    echo "Error: Number of days must be a positive integer."
    exit 1
fi

# Execute cleanup
find "$directory" -type f -mtime +$days -exec rm -f {} \;

echo "Cleanup completed. Files older than $days days have been deleted."
