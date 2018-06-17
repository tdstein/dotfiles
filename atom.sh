#!/usr/bin/env bash

################################################################################
# atom.sh - Atom Editor Package Installation Script
################################################################################

packages=(

  # Themes
  rainglow

  # Languages
  atom-ide-ui
  ide-bash
  ide-json
  ide-yaml
  ide-html
  ide-scala
  ide-python
  language-markdown
  language-ini

  # Tools
  sort-lines

)

# Install packages which don't already exist
for package in ${packages[*]}; do
  if [[ ! -d ".atom/packages/$package" ]]
  then
      apm install -c -s $package
  fi
done
