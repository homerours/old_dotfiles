#!/bin/bash

MAGENTA="\033[1;31m"
ORANGE="\033[1;33m"
GREEN="\033[1;32m"
NORMAL="\\033[0;39m"
PURPLE="\033[1;35m"

echo -e "\n${PURPLE}-------------------------------------${NORMAL}" 
echo -e "|${MAGENTA}   Installing HOMEROURS dotfiles${NORMAL}   |"
echo -e "${PURPLE}-------------------------------------${NORMAL}\n" 

echo '$ source ./install.sh'
echo '$ dotinstall symlink prezto nvim-plug vim-plug fzf'
echo ''


function dotinstall(){
	for var in "$@"
	do
		install_this "$var"
	done
}

function install_this() {
	dir=~/dotfiles                    # dotfiles directory

	if [[ $1 == "symlink" ]]
	then
		echo "SYMLINK"
		olddir=~/dotfiles_old             # old dotfiles backup directory
		files="vimrc zshrc tmux.conf gitconfig bashrc inputrc dircolors.ansi-dark"    # list of files/folders to symlink in homedir
		mkdir -p $olddir
		for file in $files; do
			mv ~/.$file $olddir &> /dev/null
			echo "Creating symlink to $file in home directory."
			ln -s $dir/$file ~/.$file
		done
		mv ~/.config/nvim/init.vim $olddir &> /dev/null
		mkdir -p ~/.config/nvim
		ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
	elif [[ $1 == "prezto" ]]
	then
		echo "Installing Prezto!"
		$dir/iprezto.sh
	elif [[ $1 == "nvim-plug" ]]
	then
		echo "Installing Plug for NEOVIM!"
		curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	elif [[ $1 == "vim-plug" ]]
	then
		echo "Installing Plug for VIM!"
		curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	elif [[ $1 == "fzf" ]]
	then
		echo "Installing FZF!"
		git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
		~/.fzf/install
	else
		echo "Option $1 unknown"
	fi
}
