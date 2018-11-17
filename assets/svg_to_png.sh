#!/bin/bash
# (1000 is the width in px)
# produces a file named file.png in the current dir

function usage_and_example {
    echo -e "usage: $(basename $0) SVG_FILE WIDTH\n  example: ./$(basename $0) logo-text.svg 666"
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
