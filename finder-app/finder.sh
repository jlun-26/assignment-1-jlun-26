#!/bin/bash

if [ $# -ne 2 ]; then
	echo "parameters above were not specified"
	exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "${filesdir}" ]; then
	echo "${filesdir} does not represent a directory on the filesystem"
	exit 1
fi

num_of_files=$(find "${filesdir}" -type f | wc -l)
num_of_matching_lines=$(grep -r "${searchstr}" "${filesdir}" | wc -l)

echo "The number of files are ${num_of_files} and the number of matching lines are ${num_of_matching_lines}"
