#!/bin/sh
if [ "$OSTYPE" == "linux-gnu" ] ; then
	SSHDIR="~/.ssh"
	if [ ! -d "$SSHDIR" ] ; then
        	mkdir ~/.ssh
	fi
	if [ -f /etc/arch-release ] || [ -f /etc/debian_version ] ; then
		cd ~ && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
		mv ~/.zshrc.bck ~/.zshrc
		source ~/.zshrc
	else
		echo "Distro not recognized"
	fi
else
	echo "OS type not Linux"
fi
