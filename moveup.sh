#!/bin/bash
# Simple and effective, change the root_dir var or modify it to accept something from input on execution
# Make sure to place it in /usr/bin and do a chmod +x moveup.sh to make it executable.
# Root directory
root_dir="/volumes/data"

# Find all files in the root directory and its subdirectories
find "$root_dir" -type f -print0 | while IFS= read -r -d '' file; do
    # Move each file to the root directory
    mv -- "$file" "$root_dir/"
done
