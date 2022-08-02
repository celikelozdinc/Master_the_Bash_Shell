#!/bin/bash
for num in {1..10}
do
    echo "Current iterator is : ""${num}"
done

for (( it = 0; it <= 20; it +=2))
do
    echo "Current iterator is : ""${it}"
done

echo "**********************************************************"

set -x
readonly opt=10
set +x

case "${opt}" in
    1) echo "1";;
    2) echo "2";;
    3) echo "2";;
    *) echo "default case";;
esac
