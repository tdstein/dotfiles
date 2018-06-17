#!/usr/bin/env bash

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

for package in ${packages[*]}; do
  if [[ ! -d "$HOME/.atom/packages/$package" ]]
  then
      apm install -c -s $package
  fi
done
