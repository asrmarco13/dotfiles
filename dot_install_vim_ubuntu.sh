#!/bin/sh
set -e
git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~ && vim +PluginInstall +qall
cd ~/.vim/bundle/youcompleteme
python3 install.py
cd ~ && source .vimrc
