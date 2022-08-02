#export TERM=xterm-256color
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
if [ -f ~/.fzf.zsh ]
then
	zle     -N   fzf-file-widget
	bindkey '^P' fzf-file-widget
	_gen_fzf_default_opts # config contained in shellrc
	source ~/.fzf.zsh
fi
