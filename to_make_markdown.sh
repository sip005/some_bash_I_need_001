#!/bin/bash

# Checking if the argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <n>"
    exit 1
fi

n=$1

# Checking if the argument is a valid integer
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Error: Argument must be a positive integer"
    exit 1
fi

# Makefile content
{
    for ((i=1; i<=$n; i++)); do
        printf "## %04d\n\n" "$i"
        echo '```sh'
        echo
        echo '```'
        echo
    done
} > file.md

echo "Markdown file generated successfully!"

