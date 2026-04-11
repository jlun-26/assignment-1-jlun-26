#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Error: Missing arguments."
    echo "Usage: $0 [writefile] [writestr]"
    exit 1
fi

writefile=$1
writestr=$2
dirpath=$(dirname "$writefile")

if ! mkdir -p "$dirpath"; then
    echo "Error: Failed to create directory ${dirpath}."
    exit 1
fi

if ! echo "$writestr" > "$writefile"; then
    echo "Error: Failed to create or write to file ${writefile}."
    exit 1
fi

exit 0
