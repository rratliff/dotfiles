#!/bin/sh
# Simple "find in files" tool
# Parameter: the search team that is passed to grep
# output: a list of filenames that contain 1 or more occurrences of the search

# The command uses the working directory as the starting point
# Note: currently all files are passed to grep. This is a bit inefficient,
# as usually we are only interested in source files (e.g. *.cpp) or other
# text data.

find . -type f -exec grep -cHI "$@" {} \; | grep -v ":0$"

