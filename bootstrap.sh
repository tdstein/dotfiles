#!/usr/bin/env bash

# Install homebrew if not installed
if ! [ -x "$(command -v brew)" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi

ln -s $HOME/Projects/dotfiles/.aliases      $HOME/.aliases
ln -s $HOME/Projects/dotfiles/.bash_profile $HOME/.bash_profile
ln -s $HOME/Projects/dotfiles/.lifeomic     $HOME/.lifeomic
ln -s $HOME/Projects/dotfiles/.exports      $HOME/.exports
ln -s $HOME/Projects/dotfiles/.gitconfig    $HOME/.gitconfig
ln -s $HOME/Projects/dotfiles/.path         $HOME/.path
ln -s $HOME/Projects/dotfiles/.secrets      $HOME/.secrets
ln -s $HOME/Projects/dotfiles/.tmux.conf    $HOME/.tmux.conf
ln -s $HOME/Projects/dotfiles/.zsh-update   $HOME/.zsh-update
ln -s $HOME/Projects/dotfiles/.zshrc        $HOME/.zshrc

source ~/.bash_profile

./macos.sh
./brew.sh
./atom.sh
./npm.sh
