#!/bin/bash

# Define source and destination directories
SOURCE_DIR="./test"
DEST_DIR="."

# Ensure the source directory exists
if [ -d "$SOURCE_DIR" ]; then
    # Move all files and directories from the second test dir to the first
    mv "$SOURCE_DIR"/* "$DEST_DIR"/
    
    # Remove the empty second test directory
    rmdir "$SOURCE_DIR"
    
    echo "Migration complete: Contents of 'test/test/' moved to 'test/'"
else
    echo "Error: Source directory 'test/test/' not found."
    exit 1
fi
