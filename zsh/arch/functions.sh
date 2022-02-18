#!/bin/sh

# Create an emby owned directory
embydir() {
    sudo mkdir -p "$@" && sudo chown emby:emby "$@";
}

# Download a list of urls
aria() {
    for x in "$@"; do
        aria2c $x;
    done
}
