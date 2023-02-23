#!/bin/sh

set -e

if ! [ -d "$HOME"/.dotfiles/ ]; then
	git clone git@github.com:tdstein/dotfiles.git "$HOME"/.dotfiles
fi
cd "$HOME"/.dotfiles/ || exit

set -- macos zsh homebrew git emacs
for package in "$@"; do
  if [ -d "${package}" ]; then
      (cd ./"${package}" || exit; . install.sh)
  fi
done
