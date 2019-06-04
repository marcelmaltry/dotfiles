# Create a new directory and enter it
mkcd() {
	mkdir -p "$@" && cd "$@";
}