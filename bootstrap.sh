#!/usr/bin/env bash

ln -s $HOME/Projects/dotfiles/.bash_profile $HOME/.bash_profile
ln -s $HOME/Projects/dotfiles/.exports      $HOME/.exports
ln -s $HOME/Projects/dotfiles/.gitconfig    $HOME/.gitconfig
ln -s $HOME/Projects/dotfiles/.path         $HOME/.path
ln -s $HOME/Projects/dotfiles/.secrets      $HOME/.secrets
ln -s $HOME/Projects/dotfiles/.tmux.conf    $HOME/.tmux.conf
ln -s $HOME/Projects/dotfiles/.zsh-update   $HOME/.zsh-update
ln -s $HOME/Projects/dotfiles/.zshrc        $HOME/.zshrc

source ~/.bash_profile
