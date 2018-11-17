#!/bin/bash
function usage_and_example {
    echo -e "\
description:
  Produces a png version of the given svg file
  at the given width in the current directory.
usage:
  $(basename $0) SVG_FILE WIDTH
  (WIDTH is in pixels)
example:
  ./$(basename $0) logo-text.svg 666"
}

if [ $# -lt 2 ]; then
    usage_and_example
    exit 1 # error
fi

if [ -z "$(which inkscape)" ]
then
    echo 'Inkscape not found on $PATH. Is it installed?'
    exit 1
fi


filename=$1
size=$2
inkscape --file="$filename" --export-png="$(basename "$filename" .svg).png" --export-width="$size"
