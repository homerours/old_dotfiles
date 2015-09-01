#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export EDITOR='vim'
export GIT_EDITOR=vim

# VIM MODE
bindkey -v
bindkey jk vi-cmd-mode 

# PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

ANDROID_SDK_PATH="/home/leo/android-sdk-linux"
export PATH=$PATH:$ANDROID_SDK_PATH/tools
export PATH=$PATH:$ANDROID_SDK_PATH/build-tools
export PATH=$PATH:$ANDROID_SDK_PATH/platform-tools

# Aliases
source ~/.aliases

# Functions
source ~/.sh_func
zle -N run-with-sudo
bindkey '^Xs' run-with-sudo

zle -N last-directory
bindkey '^O' last-directory
