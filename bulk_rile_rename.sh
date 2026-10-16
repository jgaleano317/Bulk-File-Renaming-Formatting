#!/bin/bash

set -euo pipefail

# Directory containing the files to rename
TARGET_DIR="${1:-.}"

# Text to replace
SEARCH_TEXT="${2:-}"

# Replacement text
REPLACE_TEXT="${3:-}"

# Validate arguments
if [ -z "$SEARCH_TEXT" ] || [ -z "$REPLACE_TEXT" ]; then
    echo "Usage: $0 <directory> <search_text> <replace_text>"
    echo "Example: $0 ./files old new"
    exit 1
fi

# Verify target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory '$TARGET_DIR' does not exist."
    exit 1
fi

echo "Renaming files in: $TARGET_DIR"
echo "Replacing '$SEARCH_TEXT' with '$REPLACE_TEXT'"
echo

# Rename matching files
for FILE in "$TARGET_DIR"/*"$SEARCH_TEXT"*; do

    # Skip if no files matched
    [ -e "$FILE" ] || continue

    FILENAME=$(basename "$FILE")
    NEW_FILENAME="${FILENAME//$SEARCH_TEXT/$REPLACE_TEXT}"

    if [ "$FILENAME" != "$NEW_FILENAME" ]; then
        mv -- "$FILE" "$TARGET_DIR/$NEW_FILENAME"
        echo "Renamed: $FILENAME -> $NEW_FILENAME"
    fi
done

echo
echo "File renaming completed."
