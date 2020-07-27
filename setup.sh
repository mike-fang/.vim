#!/bin/sh
#Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

#nvim
mkdir -p $HOME/.config/nvim
cp init.nvim $HOME/.config/nvim/init.vim

#venv
python -m venv env
source env/bin/activate
pip install -r requirements.txt
