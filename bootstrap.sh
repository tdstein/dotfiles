#!/usr/bin/env bash

# Install homebrew if not installed
if ! [ -x "$(command -v brew)" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi

ln -sf $HOME/Projects/dotfiles/.bash_profile $HOME/.bash_profile
ln -sf $HOME/Projects/dotfiles/.exports      $HOME/.exports
ln -sf $HOME/Projects/dotfiles/.gitconfig    $HOME/.gitconfig
ln -sf $HOME/Projects/dotfiles/.path         $HOME/.path
ln -sf $HOME/Projects/dotfiles/.secrets      $HOME/.secrets
ln -sf $HOME/Projects/dotfiles/.tmux.conf    $HOME/.tmux.conf
ln -sf $HOME/Projects/dotfiles/.zsh-update   $HOME/.zsh-update
ln -sf $HOME/Projects/dotfiles/.zshrc        $HOME/.zshrc

source ~/.bash_profile

./macos.sh
./brew.sh
./atom.sh
./npm.sh
