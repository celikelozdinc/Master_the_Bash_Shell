#!/bin/bash
readonly host="$(hostname)"
echo "My kernel version is : $(uname -r) on host ${host}"
# Expressions don't expand in single quotes, special meaning of $ sign is ignored
# Single quotes do not call uname command
echo 'My kernel version is : $(uname -r) on host ${host}' 
echo "My kernel version is : `uname -r` on host `hostname`"
