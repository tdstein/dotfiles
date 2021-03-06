#!/usr/bin/env bash

################################################################################
# macOS - Custom macOS Configuration																					 #
################################################################################


# Close any 'System Preferences' panes to prevent them from overriding this
osascript -e 'tell application "System Preferences" to quit'


###############################################################################
# Finder                                                                      #
###############################################################################

# Show hidden files (dotfiles) in "Finder" app
defaults write com.apple.finder AppleShowAllFiles TRUE


###############################################################################
# Fonts                                                                       #
###############################################################################

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts


###############################################################################
# Kill 											                                                  #
###############################################################################

for app in "Finder"; do
	killall "${app}" &> /dev/null
done

echo "Done! Some of these changes may take a restart to take effect"
