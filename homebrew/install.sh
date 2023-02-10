#!/bin/sh

if ! [ -x "$(command -v brew)" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew bundle