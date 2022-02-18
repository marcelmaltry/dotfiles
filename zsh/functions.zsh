#!/bin/sh

# Create a new directory and enter it
mkcd() {
    mkdir -p "$@" && cd "$@";
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

# Show all available terminal colors
termcolor()
{
    for x in {0..8}; do 
        for i in {30..37}; do 
            for a in {40..47}; do 
                echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
            done
            echo
        done
    done
    echo ""
}

# Source OS specific functions
if [[ "$OSTYPE" == "darwin"* ]];
then
    source ${ZSH_PATH}/macos/functions.sh
else
    source ${ZSH_PATH}/arch/functions.sh
fi
