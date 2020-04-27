#!/bin/sh
set -e
sudo apt install git vim build-essential cmake python3-dev zsh || true
git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts && ./install.sh Meslo
cd ~
vim +PluginInstall +qall
cd ~/.vim/bundle/youcompleteme
python3 install.py
if hash zsh > /dev/null 2>&1 ; then
        cd ~
        mv ~/.zshrc ~/.zshrc.bck
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
        mv ~/.zshrc.bck ~/.zshrc
        source ~/.zshrc
else
        echo "zsh command not found"
fi
