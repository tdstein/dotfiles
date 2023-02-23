#!/bin/sh

git clone git@github.com:github/gitignore.git

> .gitignore_global

cat gitignore/Global/Emacs.gitignore >> .gitignore_global
cat gitignore/Global/VirtualEnv.gitignore >> .gitignore_global
cat gitignore/Global/macOS.gitignore >> .gitignore_global

ln -sf "$(pwd)"/.gitignore_global   "$HOME"/.gitignore_global

git config --global core.excludesfile ~/.gitignore_global

rm -rf gitignore
