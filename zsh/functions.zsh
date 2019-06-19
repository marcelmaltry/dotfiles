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