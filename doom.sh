#!/usr/bin/env bash

echo This script requires you to pay attention as there are some places where you will need to input something. First thing will be for your sudo password to install emacs.
sleep 3
sudo dnf install emacs -y
echo I will now install DOOM Emacs.
sleep 2
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
echo Say yes to everything it prompts you for.
sleep 3
~/.emacs.d/bin/doom install
echo If you use my zshrc your DOOM Emacs paths are already set up. Run `doom sync` or `M-x doom/reload` if you do not want to quit emacs every time you edit a file in ~/.doom.d. Enjoy DOOM Emacs.
