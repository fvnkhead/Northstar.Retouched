#!/usr/bin/env bash

set -e

search="$1"

for new in $(ls keyvalues/scripts/weapons/ | grep "$search"); do
    echo $new
    grep CHANGE keyvalues/scripts/weapons/$new | tr '\t' ' ' | tr -s ' '
    echo ""
done
