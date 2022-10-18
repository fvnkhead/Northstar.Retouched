#!/usr/bin/env bash

set -e

search="$1"

for new in $(ls keyvalues/scripts/weapons/ | grep -i "$search"); do
    echo $new
    grep CHANGE keyvalues/scripts/weapons/$new | tr '\t' ' ' | tr -s ' '
    echo ""
done

for new in $(ls mod/scripts/vscripts/weapons/ | grep -i "$search"); do
    echo $new
    grep CHANGE mod/scripts/vscripts/weapons/$new | tr '\t' ' ' | tr -s ' '
    echo ""
done
