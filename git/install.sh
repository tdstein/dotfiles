#!/bin/sh

git clone git@github.com:github/gitignore.git

true > .gitignore_global

{
  cat gitignore/Global/JetBrains.gitignore;
  cat gitignore/Global/Emacs.gitignore;
  cat gitignore/Global/macOS.gitignore;
}  >> .gitignore_global

ln -sf "$(pwd)"/.gitignore_global   "$HOME"/.gitignore_global

git config --global core.excludesfile ~/.gitignore_global

rm -rf gitignore
