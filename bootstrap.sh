#!/usr/bin/env bash

ln -sf $HOME/Projects/dotfiles/.bash_profile $HOME/.bash_profile
ln -sf $HOME/Projects/dotfiles/.exports      $HOME/.exports
ln -sf $HOME/Projects/dotfiles/.gitconfig    $HOME/.gitconfig
ln -sf $HOME/Projects/dotfiles/.path         $HOME/.path
ln -sf $HOME/Projects/dotfiles/.secrets      $HOME/.secrets
ln -sf $HOME/Projects/dotfiles/.tmux.conf    $HOME/.tmux.conf
ln -sf $HOME/Projects/dotfiles/.zsh-update   $HOME/.zsh-update
ln -sf $HOME/Projects/dotfiles/.zshrc        $HOME/.zshrc

source ~/.bash_profile
