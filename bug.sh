#!/bin/bash

# This script attempts to process files in a directory, but contains a subtle error.

find . -type f -print0 | while IFS= read -r -d $'\0' file; do
  # Incorrect use of $file inside the loop. This will only print the directory, not the full path
  echo "Processing file: $file"
  # other code to process the file
done