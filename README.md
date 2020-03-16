# Marcel's macOS and ArchLinux .dotfiles

## Installation

### Preliminaries

#### macOS

Install the latest version of [Homebrew](https://brew.sh).
```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Install the latest version of [zsh](https://www.zsh.org) from [Homebrew](https://brew.sh).
```shell
brew install zsh
```

#### ArchLinux

Check that `zsh` ist set up correctly.
```shell
zsh
```
Make `zsh`your default shell.
```shell
chsh -s `which zsh`
```

### Install Dotfiles

Clone this repository and all its submodules, preferabbly to `~/.dotfiles`.
```shell
git clone --recursive https://github.com/marcelmaltry/dotfiles. ~/.dotfiles
```
Navigate to your dotfiles folder.
```shell
cd ~/.dotfiles
```
Run the [dotbot](https://github.com/anishathalye/dotbot/) install script. Note that, this will replace your current
`zsh`, `git`, and `nvim` configurations.
```shell
./install
```
