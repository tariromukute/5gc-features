#!/bin/bash

# Check if input and output directories are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <input_dir> <output_dir>"
  exit 1
fi

# Assign the first command line argument to the output directory variable
input_dir=$1
ouput_dir=$2
# Create the output directory if it doesn't exist
mkdir -p $output_dir

while IFS= read -r file_name || [[ -n "$file_name" ]]; do
  # Call the cat command on the file
    echo "$file_name"
    docker run --rm \
        -v ${PWD}/5G_UMLs/Procedures:/home/puml \
        -v ${PWD}/${input_dir}:/home/vars \
        -v ${PWD}/${ouput_dir}:/home/out \
        tariromukute/plantuml -o /home/out/ \
        /home/puml/${file_name}.puml

done < procedures.txt