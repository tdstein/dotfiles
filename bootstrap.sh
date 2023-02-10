#!/bin/sh

# Install "Oh My ZSH!"
if ! [ -d "$HOME"/.oh-my-zsh ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Homebrew
if ! [ -x "$(command -v brew)" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew bundle

ln -sf "$(pwd)"/.zshenv   "$HOME"/.zshenv
ln -sf "$(pwd)"/.zshrc    "$HOME"/.zshrc
ln -sf "$(pwd)"/.zlogin   "$HOME"/.zlogin
ln -sf "$(pwd)"/.zlogout  "$HOME"/.zlogout

./macos.sh
./emacs.sh
