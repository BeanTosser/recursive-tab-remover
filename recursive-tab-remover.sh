#!/bin/bash

# This script takes a directory as an argument
# It will loop through all files in that directory;
# For every file that is itself a directory, this script
# will call another instance of istels with that directory
# as an argument

# For NON-dir file, the script will check if it ends in 
# .js or .css; if so, the script will replce all tabs in
# the file with two spaces "  "
# sed 's/\t/  /' tab-file.txt > no-tab-file.txt
echo working in directory "$1"
cd "$1"

for filename in $(find . -type f \( -name "*.js" -o -name "*.css" \)); 
do
  echo "$filename" is a js or css file. applying changes...
  sed -i 's/\t/  /' "$filename" 
done
