#!/bin/sh
#
# iTerm 2 beta
#

if [[ -n $(find /Applications -type d -name "iTerm.app") ]]
then
  exit
fi

brew cask install --appdir="/Applications" iterm2-beta
