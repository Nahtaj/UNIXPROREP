#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 directory"
    exit 1
fi

directory=$1

if [ ! -d "$directory" ]; then
    echo "Error: $directory is not a valid directory"
    exit 1
fi

echo "Enter the keyword: "
read keyword

if [ -z "$keyword" ]; then
    echo "Must provide keyword"
    exit 1
fi

echo "Searching for \"$keyword\" in files under $directory..."
grep -rl "$keyword" "$directory"
