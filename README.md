# Marcel's macOS .dotfiles

## Installation

### Preliminaries

*TODO: integrate preliminaries into dotbot config.*

Install the latest version of [Homebrew](https://brew.sh).
```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Install the latest version of [zsh](https://www.zsh.org) from [Homebrew](https://brew.sh).
```shell
brew install zsh
```
Make zsh your default shell.
```shell
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
```

### Install Dotfiles

*Note: install config not yet set up.*

Clone this repository and all its submodules, preferabbly to `~/.dotfiles`.
```shell
git clone --recursive https://github.com/marcelmaltry/dotfiles. ~/.dotfiles
```
Navigate to your dotfiles folder.
```shell
cd ~/.dotfiles
```
Run the [dotbot](https://github.com/anishathalye/dotbot/) install script.
```shell
./install
```