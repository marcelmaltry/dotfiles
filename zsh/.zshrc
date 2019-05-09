# TODO: what else?

# https://github.com/bhilburn/powerlevel9k
source ${ZDOTDIR}/.p9theme
# https://github.com/zsh-users/antigen/wiki/Cookbook#adding-antigen-to-your-dotfiles
source ${ANTIGEN_INSTALL_DIR}/antigen.zsh
# https://github.com/zsh-users/antigen/wiki/Commands#antigen-init
antigen init ${ZDOTDIR}/.antigenrc

# TODO: set variable for zsh!
source ${ZDOTDIR}/aliases/.aliases
source ${ZDOTDIR}/functions/.functions