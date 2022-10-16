#!/usr/bin/env bash

set -e

search="$1"

for old in $(ls reference/ | grep -i "$search"); do
    echo $old
    diff reference/$old keyvalues/scripts/weapons/$old | tr '\t' ' ' | tr -s ' '
    echo ""
done
