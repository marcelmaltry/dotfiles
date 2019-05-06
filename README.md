# .files

## Installation

### macOS
Instal zsh and antigen from (Homebrew)[https://brew.sh].
`brew install zsh`
`brew install antigen`

Clone repository and create symlinks to local copy.
`git clone https://github.com/marcelmaltry/dotfiles.git ~/.dotfiles`
`rm ~/.zshenv`
`ln -sv ~/.dotfiles/zsh/.zshenv ~`

Change shell to use zsh by default.
`sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh`

### ArchLinux
Instal antigen from (AUR)[http://aur.archlinux.org]
`yay -Syu antigen-git`

Clone repository and create symlinks to local copy.
`git clone https://github.com/marcelmaltry/dotfiles.git ~/.dotfiles`
`rm ~/.zshenv`
`ln -sv ~/.dotfiles/zsh/.zshenv ~`

Change shell to use zsh by default.
*TODO: look up procedure*