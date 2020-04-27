#!/bin/bash
set -e
sudo pacman -S git vim build-essential cmake python3-dev zsh zsh-completions curl || true
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
if hash yay > /dev/null 2>&1 ; then
        yay -S nerd-fonts-meslo 
        vim +PluginInstall +qall
        cd ~/.vim/bundle/youcompleteme
        python3 install.py
else
        echo "yay command not found"
fi
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
