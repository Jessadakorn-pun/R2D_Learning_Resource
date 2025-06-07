#!/bin/bash

set -eu

# Create folder in server
if [! -d "../server/$(date -v -1d +%Y%m%d)"]; #yyyymmdd : if current previous date not exit then create previous date dir
then 
    mkdir -p ../server/"$(date -v -1d +%Y%m%d)" # Create directory
    echo '$(date) : Folder "date -v -1d +%Y%m%d"' >> "log.txt" # Saving creating log to log file
fi

# Copy file from client folder
if [- f ../client/*$(date -v -1d +%Y-%m-%d)* ];
then
    cp ../client/*$(date -v -1d +%Y-%m-%d)* ../server/$(date -v -1d +%Y%m%d)/ ## Copy file

else
    echo "$(date) : File not found" >> log.txt
    echo "Error : File not found" 1>&2
    exit 1 # Exit Script as Error
fi

# Add to log file
echo "$(date) : Task Complete" >> log.txt
