#!/bin/bash

# Set the path to the folder containing the files
folder_path="./5G_Test"

# Define the list of file names to read
file_list=(
  "TS29518_Namf_Communication"
  "TS29518_Namf_EventExposure"
)

# Loop through all files in the folder
for file_name in "${file_list[@]}"
do
    # Call the cat command on the file
    echo "$file_name"
    docker run --rm \
        -v ${PWD}/openapi:/local \
        -v ${PWD}/5G_APIs:/home \
        openapitools/openapi-generator-cli generate \
        -i /home/${file_name}.yaml \
        -g html \
        -t /local/templates/html/ \
        -o /local/out/${file_name}

    # Copy and rename the output
    cp ${PWD}/openapi/out/${file_name}/index.html ${PWD}/out/${file_name}.html
done
