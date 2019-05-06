# .files

## Installation

### macOS
Clone repository and create symlinks to local copy.
```shell
git clone https://github.com/marcelmaltry/dotfiles.git ~/.dotfiles
rm ~/.zshenv
ln -sv ~/.dotfiles/zsh/.zshenv ~
```
Change shell to use zsh by default.
```shell
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh`
```

### ArchLinux
Clone repository and create symlinks to local copy.
```shell
git clone https://github.com/marcelmaltry/dotfiles.git ~/.dotfiles
rm ~/.zshenv
ln -sv ~/.dotfiles/zsh/.zshenv ~
```

Change shell to use zsh by default.
*TODO: look up procedure*