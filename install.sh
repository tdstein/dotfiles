#!/bin/sh

git clone https://github.com/tdstein/dotfiles.git "$HOME"/.dotfiles

cd "$HOME"/.dotfiles/ || exit
make