#!/bin/bash

if [ $# -ne 2 ]; then
	echo "arguments above were not specified"
	exit 1
fi

writefile=$1
writestr=$2
dirpath=$(dirname "${writefile}")
mkdir -p "${dirpath}"

if echo "${writestr}" > "${writefile}"; then
	exit 0
else
	echo "the file could not be created"
	exit 1
fi
