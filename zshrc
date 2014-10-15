# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/oh-my-zsh

ZSH_THEME="kphoen"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git npm lol)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
zstyle ':completion:*:sudo::' environ PATH="/sbin:/usr/sbin:$PATH" HOME="/root"

set nosharedhistory

export PATH=~/npm/bin:~/bin/:$PATH

function fcd() {
  command mkdir -p "$@" && cd "$@" 
}
[[ -e ~/.login ]] &&  . ~/.login
[[ -e ~/.zshrc.local ]] && . ~/.zshrc.local

