#!/usr/bin/env bash

# Install command-line tools using Homebrew

# Fetch the newest version
brew update

# Upgrade outdated brews
brew upgrade

# Tap all versions
brew tap caskroom/versions

brew install bash

# GNU Tooling
brew install coreutils
brew install moreutils
brew install findutils

# More Tooling
brew install git
brew install grep

# Editors
brew install vim
brew cask install atom

# Programming Languages
brew cask install java8
brew install python
brew install scala
brew install npm

# Build tools
brew install maven
brew install gradle
brew install sbt

# Cleanup at the very end
brew cleanup
