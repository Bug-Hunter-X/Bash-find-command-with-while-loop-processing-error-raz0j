#!/bin/bash

# This script correctly processes files in a directory.

find . -type f -print0 | while IFS= read -r -d $'\0' file; do
  # Correct use of $file. Using the full path of the file
  echo "Processing file: $file"
  # other code to process the file
done