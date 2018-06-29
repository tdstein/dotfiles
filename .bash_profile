#!/usr/bin/env bash

################################################################################
# Bash Profile																																 #
################################################################################

dotfiles=(~/.aliases ~/.exports ~/.path ~/.secrets)

# Load dotfiles
for file in ${dotfiles[*]}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
