#!/bin/sh

set -e

if ! [ -d "$HOME"/.dotfiles/ ]; then
	git clone git@github.com:tdstein/dotfiles.git "$HOME"/.dotfiles
fi
cd "$HOME"/.dotfiles/

. bootstrap.sh
