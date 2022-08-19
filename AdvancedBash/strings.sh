#!/bin/bash
#set -x
set -o nounset

readonly sequence="___XXXxxxyyyYYY___"
echo "Size of sequence is => ""${#sequence}"

echo "**********************************************************"

readonly replaced_seq=${sequence//___/!!!}
echo "Edited sequence is => ""${replaced_seq}"

echo "**********************************************************"

readonly subseq=${sequence:6:6}
echo "Subsequence is => ""${subseq}"

echo "**********************************************************"