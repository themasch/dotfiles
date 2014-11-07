# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/oh-my-zsh

ZSH_THEME="kphoen"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git npm lol extract)

[[ -e ~/.zshcfg ]] && . ~/.zshcfg

source $ZSH/oh-my-zsh.sh

for config ($include_cfgs); do
    source $HOME/.dotfiles/zsh.d/$include_cfgs.sh
done

# Customize to your needs...
zstyle ':completion:*:sudo::' environ PATH="/sbin:/usr/sbin:$PATH" HOME="/root"

unsetopt share_history

export PATH=~/npm/bin:~/bin/:$PATH

[[ -e ~/.login ]] &&  . ~/.login
[[ -e ~/.zshrc.local ]] && . ~/.zshrc.local

