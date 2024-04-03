# Directory Cleanup Tool

## Overview

The Directory Cleanup Tool is a Bash script designed to help manage storage by deleting files older than a specified number of days within a given directory. This script is an excellent example to learn about handling user inputs, performing checks, and using the `find` command for file management.

## Features

- Deletes files based on age.
- User inputs for directory path and age threshold.
- Basic error handling for user inputs.

## Prerequisites

- Bash shell
- `find` command available in Unix/Linux systems

## Usage

To use the script, follow these steps:

1. Make the script executable:

```bash
chmod +x directory-cleanup.sh
```

2. Run the script and follow the prompts:

```bash
./directory-cleanup.sh
```

## How It Works

- The script starts by asking the user for the directory to clean up and the age of files to delete (in days).
- It performs basic input validation to ensure that a directory and a valid number of days are provided.
- The `find` command is then used to identify and delete files older than the specified number of days using the `-mtime` option. The `-exec rm -f {} \;` part of the command handles the deletion of each found file.

## Important Notes

- Be cautious when specifying the directory and number of days. This script will delete files, which cannot be undone.
- Ensure you have the necessary permissions to delete files in the specified directory.
- It's recommended to perform a dry run or backup important files before running cleanup operations.
