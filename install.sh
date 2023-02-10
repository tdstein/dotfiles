#!/bin/sh

set -e

git clone git@github.com:tdstein/dotfiles.git "$HOME"/.dotfiles && cd "$HOME"/.dotfiles/

. bootstrap.sh
