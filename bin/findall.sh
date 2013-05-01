#!/bin/sh

find . -type f -print0| xargs -0 grep -c $1 | grep -v ":0$"
