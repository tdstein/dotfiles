#!/bin/zsh

if ! [ -d .emacs.d ]; then
	git clone https://github.com/syl20bnr/spacemacs .emacs.d
fi

ln -sf "$(pwd)"/.emacs.d   "$HOME"/.emacs.d