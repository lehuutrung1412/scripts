#!/bin/bash

# Set the directory where the zip files are located
zip_directory="$1"

combined_directory=$2

# Loop through all the zip files in the directory
for zip_file in "$zip_directory"/*.zip; do
    unar -f "$zip_file" -o $combined_directory;
done

if [ $? -eq 0 ]; then
  echo "Unziped and merged zip files successfully!"
else
  echo "There was an error!"
fi