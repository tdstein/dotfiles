#!/bin/sh

if ! [ -d "$HOME"/.oh-my-zsh ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

ln -sf "$(pwd)"/.zshenv   "$HOME"/.zshenv
ln -sf "$(pwd)"/.zshrc    "$HOME"/.zshrc
ln -sf "$(pwd)"/.zlogin   "$HOME"/.zlogin
ln -sf "$(pwd)"/.zlogout  "$HOME"/.zlogout
