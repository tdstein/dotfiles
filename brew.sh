#!/usr/bin/env bash

################################################################################
# brew.sh - Homebrew Management Script                              #
################################################################################

# Fetch the newest version
brew update

# Upgrade outdated brews
brew upgrade

# Tap all versions
brew tap caskroom/versions


################################################################################
# Cellar Packages                                                              #
################################################################################

packages=(

  bash

  # GNU Tooling
  coreutils
  moreutils
  findutils

  # Tooling
  git
  grep
  tmux

  # Programming Languages
  python
  scala
  node

  # Build tools
  maven
  gradle
  sbt
)

for package in ${packages[*]}; do
  if [[ ! -d "/usr/local/Cellar/$package" ]]; then
      brew install ${package}
  fi
done

################################################################################
# Cask Packages                                                                #
################################################################################

casks=(

  # Editors
  atom
  intellij-idea-ce

  # Programming Languages
  corretto
)

for package in ${casks[*]}; do
  if [[ ! -d "/usr/local/Caskroom/$package" ]]; then
      brew cask install ${package}
  fi
done


# Cleanup at the very end
brew cleanup
