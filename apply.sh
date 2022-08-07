#!/bin/sh

cd $HOME
mkdir .zsh && cd .zsh
git clone https://github.com/ohmyzsh/ohmyzsh
git clone https://github.com/olivierverdier/zsh-git-prompt
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting
cd ~/dotfiles
mv .zshrc ~
mv .config/* ~/.config
cd ~
sudo xbps-install alcritty nodejs xset npm libtool ripgrep neovim zsh github-cli cmake cargo pip nitrogen picom flameshot -y
