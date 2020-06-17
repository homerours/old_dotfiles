#!/bin/bash

function dotfiles_installer(){
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
		ln -s $dir/init.vim ~/.config/nvim/init.vim
	elif [[ $1 == "prezto" ]]
	then
		echo "Installing Prezto!"
		$dir/install_prezto.sh
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
