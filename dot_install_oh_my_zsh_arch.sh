#!/bin/sh
set -e
if hash zsh > /dev/null 2>&1 ; then
        cd ~ && mv ~/.zshrc ~/.zshrc.bck
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
        echo "zsh command not found"
fi
