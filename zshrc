# Path to your oh-my-zsh installation.
export ZSH=/home/leo/.oh-my-zsh

ZSH_THEME="awesomepanda" # themes in ~/.oh-my-zsh/themes/

HIST_STAMPS="dd.mm.yyyy" # format de timestamp

# PLugins
plugins=(git git-extras web-search tmux)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/leo/android-sdk-linux/tools:/home/leo/android-sdk-linux/platform-tools"

source $ZSH/oh-my-zsh.sh

export EDITOR='vim';

# VIM MODE
bindkey -v
bindkey jk vi-cmd-mode

# Tmux 256 colors
export TERM=xterm-256color

# Aliases
source ~/.aliases

# Functions
source ~/.sh_func
zle -N run-with-sudo
bindkey '^Xs' run-with-sudo

zle -N last-directory
bindkey '^O' last-directory
