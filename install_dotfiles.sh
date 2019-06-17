#!/bin/bash
############################
# Creates symlinks
############################

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="vimrc vimrc.plugins vimrc.plugins.config zshrc tmux.conf gitconfig bashrc inputrc aliases sh_func dircolors.ansi-dark"    # list of files/folders to symlink in homedir

##########

MAGENTA="\033[1;31m"
ORANGE="\033[1;33m"
GREEN="\033[1;32m"
NORMAL="\\033[0;39m"
PURPLE="\033[1;35m"

echo -e "\n${PURPLE}-------------------------------------${NORMAL}" 
echo -e "|${MAGENTA}   Installing HOMEROURS dotfiles${NORMAL}   |"
echo -e "${PURPLE}-------------------------------------${NORMAL}\n" 

# create dotfiles_old in homedir
echo -e "Creating ${ORANGE}${olddir}${NORMAL} for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo -e "${GREEN}Done !${NORMAL}\n"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo -e "${GREEN}Done !${NORMAL}\n"

echo "Moving any existing dotfiles from ~ to $olddir"
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
	mv ~/.$file $olddir
	echo -e "Creating symlink to ${ORANGE}${file}${NORMAL} in home directory."
	ln -s $dir/$file ~/.$file
done
echo -e "${GREEN}Done !${NORMAL}\n"

# Symlink prezto
echo -e "Would you like to symlink ${GREEN}prezto${NORMAL}?"
select yn in "Yes" "No"; do
	case $yn in
		Yes) ./install_prezto.sh; echo -e "${GREEN}Done !${NORMAL}\n"; break;;
		No) echo -e "prezto will not be symlinked\n"; break;;
	esac
done

# Install Vundle
echo -e "Would you like to install ${GREEN}vim-plug${NORMAL}?"
select yn in "Yes" "No"; do
	case $yn in
		Yes) curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		No) echo -e "vim-plug will not be installed\n"; break;;
	esac
done


echo -e "\n${GREEN}--------- FINISHED ---------${NORMAL}\n"
