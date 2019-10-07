#!/bin/sh

# Create a new directory and enter it
mkcd() {
    mkdir -p "$@" && cd "$@";
}

# Download a list of urls
aria() {
    for x in "$@"; do
        aria2c $x;
    done
}

# Compress pdf with ghostscript
compresspdf () {
    OLDNAME="$1"
    if [ ${OLDNAME: -4}==".pdf" ]
    then
        NEWNAME="${OLDNAME%%.*}-compressed.pdf"
        gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$NEWNAME" "$OLDNAME"
        echo "Compressed pdf saved to $NEWNAME."
    else
        echo "File is not a .pdf file."
    fi
}
