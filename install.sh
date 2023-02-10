#!/bin/sh

set -e

git clone https://github.com/tdstein/dotfiles.git "$HOME"/.dotfiles && cd "$HOME"/.dotfiles/

. bootstrap.sh
