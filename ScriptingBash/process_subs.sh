#!/bin/bash

current_dir=$(dirname "$(readlink --canonicalize-existing "${0}" 2> /dev/null)")
readonly log1="${current_dir}/../resources/log2021.log"
readonly log2="${current_dir}/../resources/log2022.log"
wc -l <(cat "${log1}")
cat  "${log1}" | wc -l
wc -l <(cat "${log2}")
cat "${log2}" | wc -l

echo "**********************************************************"
#echo "${log1}"
#echo "${log2}"
diff <(cat "${log1}") <(cat "${log2}")
diff "${log1}" "${log2}"