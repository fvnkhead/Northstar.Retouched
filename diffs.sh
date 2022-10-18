#!/usr/bin/env bash

set -e

search="$1"

for old in $(ls reference/*.txt | grep -i "$search"); do
    old=$(basename "$old")
    echo $old
    diff reference/$old keyvalues/scripts/weapons/$old | tr '\t' ' ' | tr -s ' '
    echo ""
done

for old in $(ls reference/*.nut | grep -i "$search"); do
    old=$(basename "$old")
    echo $old
    diff reference/$old mod/scripts/vscripts/weapons/$old
    echo ""
done
