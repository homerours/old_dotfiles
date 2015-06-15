# Path to your oh-my-zsh installation.
export ZSH=/home/leo/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="awesomepanda"

HIST_STAMPS="dd.mm.yyyy" # format de timestamp

# PLugins
plugins=(git git-extras web-search tmux)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/leo/android-sdk-linux/tools:/home/leo/android-sdk-linux/platform-tools"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export EDITOR='vim';
# VIM MODE
bindkey -v
bindkey jk vi-cmd-mode

# Rendu sous tmux, forcer les 256 couleurs
export TERM=xterm-256color

# Alias perso
alias ls="ls --color=always"
alias ll="clear ; ls"
alias lz="ls -lh | awk '{print \$5, \$9}' | column -t"
alias lza="ls -lah | awk '{print \$5, \$9}' | column -t"

alias ctar="tar czvf" # c: create zip, z:gzip mode (more compression), v: verbose, show files details, f: indicate the file to compress
alias xtar="tar xzvf" # x: extract zip
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Fonctions
run-with-sudo() { LBUFFER="sudo $LBUFFER" }
zle -N run-with-sudo
bindkey '^Xs' run-with-sudo
