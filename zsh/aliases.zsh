#!/bin/sh

# colorize output of `tree`
alias tree="tree -C"

# neovim
alias n='nvim'

# eza
if command -v eza &> /dev/null
then
    alias ls='eza'
fi

# git
alias glg='git lg'
alias glga='git lga'

# Source OS specific functions
if [[ "$OSTYPE" == "darwin"* ]];
then
    source ${ZSH_PATH}/macos/aliases.sh
else
    source ${ZSH_PATH}/arch/aliases.sh
fi
