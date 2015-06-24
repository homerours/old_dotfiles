# Path to your oh-my-zsh installation.
export ZSH=/home/leo/.oh-my-zsh

ZSH_THEME="awesomepanda" # themes in ~/.oh-my-zsh/themes/
HIST_STAMPS="dd.mm.yyyy" # format de timestamp

# Tmux 256 colors
export TERM=xterm-256color

# PLugins
plugins=(git git-extras web-search tmux)

# Tmux config
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_FIXTERM=false
ZSH_TMUX_FIXTERM_WITH_256COLOR=false
ZSH_TMUX_FIXTERM_WITHOUT_256COLOR=false

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/leo/android-sdk-linux/tools:/home/leo/android-sdk-linux/platform-tools"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export EDITOR='vim';

# VIM MODE
bindkey -v
bindkey jk vi-cmd-mode

# Aliases
source ~/.aliases

# Functions
source ~/.sh_func
zle -N run-with-sudo
bindkey '^Xs' run-with-sudo

zle -N last-directory
bindkey '^O' last-directory

source $ZSH/oh-my-zsh.sh
