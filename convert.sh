#!/bin/bash

while IFS= read -r file_name || [[ -n "$file_name" ]]; do
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
done < services.txt
