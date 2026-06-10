#!/bin/bash
# Sanitize filenames: Convert to lowercase and replace spaces with underscores
for file in *; do
    if [ -f "$file" ]; then
        new_name=$(echo "$file" | tr 'A-Z' 'a-z' | tr ' ' '_')
        if [ "$file" != "$new_name" ]; then
            mv "$file" "$new_name"
        fi
    fi
done

