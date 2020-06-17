#!/bin/bash
source ~/dotfiles/shellrc.sh
# Terminal Colors
export CLICOLOR=1


# Bash History Options
export HISTSIZE=1000000
export HISTCONTROL='ignoreboth'
export HISTIGNORE='&:ls:[bf]g:exit'
export HISTTIMEFORMAT='%b %d %H:%M:%S: '
shopt -s histappend
set cmdhist

shopt -s checkwinsize
shopt -s cdspell

source ~/dotfiles/bash_prompt


# FZF fuzzy finder
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
if [ -f ~/.fzf.bash ]
then
	source ~/.fzf.bash
	_gen_fzf_default_opts # config contained in shellrc
	bind -x '"\C-p": "fzf-file-widget"'
fi

