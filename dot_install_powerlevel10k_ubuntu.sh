#!/bin/sh
SSHDIR="~/.ssh"
if [! -d "$SSHDIR"] ; then
	mkdir "$SSHDIR"
fi
cd ~ && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
mv ~/.zshrc.bck ~/.zshrc
source ~/.zshrc
