#export TERM=rxvt-unicode-256color # for a colorful rxvt unicode session
source ~/dotfiles/shellrc.sh

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# VIM MODE
bindkey -v
bindkey jk vi-cmd-mode 

bindkey '\e[Z' reverse-menu-complete


zle -N run-with-sudo
bindkey '^Xs' run-with-sudo

#PROMPT="$MAGENTA%n$BASE0@$YELLOW%m$BASE0| $GREEN%~ $RESET 
#$"

# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
