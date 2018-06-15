#!/usr/bin/env bash

# Install command-line tools using Homebrew

# Fetch the newest version
brew update

# Upgrade outdated brews
brew upgrade

brew tap caskroom/versions

# Tooling
brew install git

# Editors
brew cask install atom

# Programming Languages
brew cask install java8
brew install python
brew install scala

# Build tools
brew install maven
brew install gradle
brew install sbt

# Cleanup at the very end
brew cleanup
