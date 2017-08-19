#!/bin/bash

. ~/.bashrc

export CLICOLOR=1


# Setting PATH for Python 3.6
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

ssh-add -K
