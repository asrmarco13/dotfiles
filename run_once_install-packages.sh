{{ if eq .chezmoi.osrelease.id "ubuntu" -}}
#!/bin/sh
sudo apt install git
{{ else if ed .chezmoi.osrelease.id "arch" -}}
#!/bin/bash
sudo pacman -S git
{{ end -}}
