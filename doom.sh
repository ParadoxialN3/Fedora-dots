#!/usr/bin/env bash

echo This script requires you to pay attention as there are some places where you will need to input something. First thing will be for your sudo password to install emacs.
sleep 3
sudo dnf install emacs ripgrep -y
I will now install DOOM Emacs.
sleep 2
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
echo Say yes to everything it prompts you for.
sleep 3
~/.emacs.d/bin/doom install
echo Now I will copy my configurations.
sleep 2
cp ~/dotfiles/.doom.d/config.el ~/.doom.d
cp ~/dotfiles/.doom.d/init.el ~/.doom.d
echo If you already have my .zshrc you already have the paths setup so you do not need to do ~/.emacs.d/bin/doom <insert argument here>. Just restart zsh and do a DOOM Sync. After that, enjoy.
sleep 3
