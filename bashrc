# Terminal Colors
export CLICOLOR=1
export TERM="xterm-256color"

# Bash History Options
export HISTSIZE=1000000
export HISTCONTROL='ignoreboth'
export HISTIGNORE='&:ls:[bf]g:exit'
export HISTTIMEFORMAT='%b %d %H:%M:%S: '
shopt -s histappend
set cmdhist

# VI mode
set -o vi
bind "jk":vi-movement-mode

export EDITOR=vim

set completion-ignore-case on
shopt -s cdspell
shopt -s checkwinsize

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias vi='vim'
alias v='vim'

#export PATH=${PATH}:~/bin:/usr/local/go/bin:${SCALA_HOME}/bin:${GOPATH}/bin:/usr/local/sbin
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/leo/android-sdk-linux/tools:/home/leo/android-sdk-linux/platform-tools"
