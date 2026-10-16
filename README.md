# Bulk File Renaming

A Bash script for renaming multiple files by replacing specific text within their filenames.

This project was built as a hands-on Bash and Linux file-management exercise to practice scripting, variables, command-line arguments, loops, and safe file operations.

## What It Does

- Renames multiple files in a directory
- Searches filenames for specified text
- Replaces matching text with a new value
- Accepts the target directory and rename values as command-line arguments
- Verifies that the target directory exists
- Displays each rename as it happens

## Technologies

- **Linux**
- **Bash**
- **mv**
- **Command-line arguments**

## Usage

Make the script executable:

```bash
chmod +x bulk_rename.sh
```

Run the script using:

```bash
./bulk_rename.sh <directory> <search_text> <replace_text>
```

### Example

Given these files:

```text
old_photo_01.jpg
old_photo_02.jpg
old_photo_03.jpg
```

Run:

```bash
./bulk_rename.sh ./photos old new
```

The files will become:

```text
new_photo_01.jpg
new_photo_02.jpg
new_photo_03.jpg
```

## How It Works

The script accepts three arguments:

1. **Directory** — The directory containing the files.
2. **Search text** — The text to find in filenames.
3. **Replacement text** — The text to replace it with.

The script then loops through matching files, creates the new filename, and uses `mv` to perform the rename.

## What I Learned

This project helped me practice Bash scripting and Linux file management.

Key areas I practiced include:

- Command-line arguments
- Bash variables
- Conditional statements
- `for` loops
- Filename manipulation
- File and directory validation
- Using `mv` to rename files
- Handling filenames safely with quoted variables
- Basic error handling with `set -euo pipefail`

## Future Improvements

Possible improvements include:

- Adding a dry-run mode before making changes
- Supporting recursive directory processing
- Adding regular expression support
- Adding more detailed logging
- Adding protection against accidentally overwriting existing files
