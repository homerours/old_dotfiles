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

export EDITOR=vim

set completion-ignore-case on
shopt -s checkwinsize
shopt -s cdspell


# Aliases
source ~/.aliases

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/leo/android-sdk-linux/tools:/home/leo/android-sdk-linux/platform-tools"
