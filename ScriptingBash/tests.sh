#!/bin/bash

name="XXxxXX"
if [[ -z $name ]]; then
    echo "I don't know whose name it is!"
else
    echo "I know whose name it is : ""${name}"
fi

unset name

if [[ -z $name ]]; then
    echo "I don't know whose name it is!"
else
    echo "I know whose name it is : ""${name}"
fi

echo "**********************************************************"


function comparator() {
    if [[ $1 -gt $2 ]] ; then
        echo "$1 is greater than $2"
    else 
        echo "$1 is less than or equal to $2"
    fi
}

comparator 1 3
comparator 3 3
comparator 3 -3
comparator 3 1


echo "**********************************************************"