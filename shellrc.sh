export TERM=xterm-256color
eval `dircolors ~/.dircolors.ansi-dark`
#eval `dircolors ~/.dircolors.256dark`
#eval `dircolors ~/.dircolors.ansi-universal`

# VIM as default
export EDITOR='vim'
export SUDO_EDITOR='vim'
export GIT_EDITOR=vim

# PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# NVM
#source /usr/share/nvm/init-nvm.sh

# ADB_tools
if [ -d "$HOME/Documents/dev/lineage/platform-tools" ] ; then
	export PATH="$HOME/Documents/dev/lineage/platform-tools:$PATH"
fi

# Aliases
source ~/dotfiles/aliases

# Functions
source ~/dotfiles/sh_func
# issue with bash
#source ~/dotfiles/android.sh

#export FZF_DEFAULT_OPTS='--color dark,hl:33,hl+:37,fg+:235,bg+:136,fg+:254
#--color info:254,prompt:37,spinner:108,pointer:235,marker:235'
_gen_fzf_default_opts() {
	local base03="234"
	local base02="235"
	local base01="240"
	local base00="241"
	local base0="244"
	local base1="245"
	local base2="254"
	local base3="230"
	local yellow="136"
	local orange="166"
	local red="160"
	local magenta="125"
	local violet="61"
	local blue="33"
	local cyan="37"
	local green="64"

	# Solarized Dark color scheme for fzf
	export FZF_DEFAULT_OPTS="
	--color fg:-1,bg:-1,hl:$yellow,fg+:$base2,bg+:-1,hl+:$magenta
	--color info:$blue,prompt:$yellow,pointer:$base3,marker:$base3,spinner:$yellow
	"
	## Solarized Light color scheme for fzf
	#export FZF_DEFAULT_OPTS="
	#  --color fg:-1,bg:-1,hl:$blue,fg+:$base02,bg+:$base2,hl+:$blue
	#  --color info:$yellow,prompt:$yellow,pointer:$base03,marker:$base03,spinner:$yellow
	#"
}
_gen_fzf_default_opts

# include Z
. ~/dotfiles/z.sh
