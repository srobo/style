#!/bin/bash
# (1000 is the width in px)
# produces a file named file.png in the current dir

function usage_and_example {
    echo -e "usage: ./to_png.sh SVG_FILE WIDTH\n  example: ./to_png.sh logo-text.png 666"
}

if [ $# -lt 2 ]; then
    usage_and_example
    exit 1 # error
fi

# Make sure you have inkscape installed!
filename=$1
size=$2
inkscape -f "$filename" -e "$(basename "$filename" .svg).png" -w="$size"
