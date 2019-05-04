# https://wiki.archlinux.org/index.php/Neovim#Replacing_vi_and_vim_with_neovim
export EDITOR=nvim
export VISUAL=nvim

# https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
export CC=gcc-7
export CXX=g++-7

# https://dnsprivacy.org/wiki/display/DP/DNS+Privacy+Daemon+-+Stubby
export PATH="/usr/local/sbin:$PATH"

# ZSH Installation
ZSH=${HOME}/.antigen

# https://github.com/bhilburn/powerlevel9k
source $HOME/.p9config

# https://github.com/zsh-users/antigen
source $(brew --prefix)/share/antigen/antigen.zsh
# https://github.com/zsh-users/antigen/wiki/Commands#antigen-init
antigen init $HOME/.antigenrc

# https://github.com/ogham/exa
alias ls='exa --group-directories-first'
alias l='exa --group-directories-first'
alias la='exa --all --group-directories-first'
alias ll='exa --long --group-directories-first'
alias lla='exa --long --all  --group-directories-first'
alias lal='exa --al --group-directories-first'
alias lt='exa --tree --group-directories-first'
alias lta='exa --all --tree --group-directories-first'
alias lat='exa --all --tree --group-directories-first'
alias llat='exa --long --all --tree --group-directories-first'
alias suroot='sudo -E -s'
mkcd() { mkdir -p "$@" && cd "$@"; }