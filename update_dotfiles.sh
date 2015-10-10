#!/bin/bash

echo "----- Updating dotfiles -----"
git pull origin master
git submodule update --recursive
echo "----- Done ! -----"
