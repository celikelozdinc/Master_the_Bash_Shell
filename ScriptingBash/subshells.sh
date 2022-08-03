#!/bin/bash

current_dir=$(dirname "$(readlink --canonicalize-existing "${0}" 2> /dev/null)")
readonly resources_dir="${current_dir}/../resources/"

VAR1="VAR in parent shell"
export VAR2="exported"
(
    echo "Hi from subshell"
    echo "${VAR1}"
    echo "${VAR2}"
    cd "${resources_dir}"
    pwd
    ls -laht
    echo "Bye from subshell"
)

bash -c 'echo New bash on directory $(pwd), VAR="${VAR1}", VAR2="${VAR2}"'