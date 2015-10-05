export TERM=rxvt-unicode-256color # for a colorful rxvt unicode session

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export EDITOR='vim'
export SUDO_EDITOR='vim'
export GIT_EDITOR=vim

# VIM MODE
bindkey -v
bindkey jk vi-cmd-mode 

# PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"


# Android SDK
ANDROID_SDK_PATH=$HOME"/android-sdk-linux"
export PATH=$PATH:$ANDROID_SDK_PATH/tools
export PATH=$PATH:$ANDROID_SDK_PATH/build-tools
export PATH=$PATH:$ANDROID_SDK_PATH/platform-tools

# Aliases
source ~/.aliases

# Functions
source ~/.sh_func
zle -N run-with-sudo
bindkey '^Xs' run-with-sudo

eval `dircolors ~/.dircolors.ansi-dark`
#eval `dircolors ~/.dircolors.256dark`
#eval `dircolors ~/.dircolors.ansi-universal`
