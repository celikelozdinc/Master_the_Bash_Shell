#!/bin/bash

readonly MYSTR="My Dummy Str"
MYSENTENCE="A sentence with $MYSTR in it"
echo "${MYSENTENCE}"
MYSENTENCE='A sentence with $MYSTR in it' #Expressions don't expand in single quotes
echo "${MYSENTENCE}"

echo "**********************************************************"

export MYSTRING="astring"
echo "${MYSTRING}"
bash -c 'echo "MYSTRING:"${MYSTRING}'
bash -c 'echo "MYSTRING:"${MYSTRING}'
(
    echo ">>>Hi from subshell"
    echo ">>>MYSTRING:""${MYSTRING}"
    echo ">>>Bye from subshell"
)
NEWSTRING="newstring"
echo "${NEWSTRING}"
bash -c 'echo "MYSTRING:"${MYSTRING}'
bash -c 'echo "NEWSTRING:"${NEWSTRING}'
(
    echo ">>>Hi from subshell"
    echo ">>>MYSTRING:""${NEWSTRING}"
    echo ">>>Bye from subshell"
)