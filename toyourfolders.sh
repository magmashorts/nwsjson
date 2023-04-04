#!/bin/bash

# Scan the fczones folder for all files and move them to their two letter state folders
for file in fczones/*.json;
do
    # Get the state intials from the file name
    state=${file:8:2}

    # Create the state folder if it doesn't exist
    mkdir -p "fczones/${state}"
    
    # Move the file to the state folder
    mv "$file" "fczones/${state}"

    # Print the file name and the state folder it was moved to
    printf "$file - fczones/${state}\n"
done