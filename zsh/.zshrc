# 
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
export CC=gcc-8
export CXX=g++-8

# https://docs.brew.sh/Formula-Cookbook#variables-for-directory-locations
# TODO: only do this on MacOS possibly in .zshrc
export PATH="/usr/local/sbin:$PATH"


# Setting default JDK to version 1.8.
# TODO: only di this on MacIS possibly in .zshrc
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# https://github.com/marcelmaltry/dotfiles
DOTFILES=${HOME}/.dotfiles

# http://zsh.sourceforge.net/Intro/intro_3.html#SEC3
ZDOTDIR=${DOTFILES}/zsh

# https://github.com/zsh-users/antigen/wiki/Configuration
ANTIGEN_INSTALL_DIR=${ZDOTDIR}/antigen
# Generalö
ADOTDIR=${ZDOTDIR}/.antigen
# ANTIGEN_LOG=${ADOTDIR}/antigen.log
# Customization
# ANTIGEN_CACHE=${ADOTDIR}/init.zsh
# ANTIGEN_COMPDUMP=${ADOTDIR}/.zcompdump
ANTIGEN_BUNDLES=${ADOTDIR}/bundles
# ANTIGEN_LOCK=${ADOTDIR}/.lock
# ANTIGEN_DEBUG_LOG
# Optimizations
# ANTIGEN_AUTO_CONFIG=true
# Fix spotify not found of osx oh-my-zsh bundle
ZSH=${ANTIGEN_BUNDLES}/robbyrussell/oh-my-zsh

# https://github.com/bhilburn/powerlevel9k
source ${ZDOTDIR}/.p9theme
# https://github.com/zsh-users/antigen/wiki/Cookbook#adding-antigen-to-your-dotfiles
source ${ANTIGEN_INSTALL_DIR}/antigen.zsh
# https://github.com/zsh-users/antigen/wiki/Commands#antigen-init
antigen init ${ZDOTDIR}/.antigenrc

# TODO: set variable for zsh!
source ${ZDOTDIR}/aliases/.aliases
source ${ZDOTDIR}/functions/.functions