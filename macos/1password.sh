#!/bin/sh
#
# 1password
#

if [[ -n $(find /Applications -type d -name "1Password 6.app") ]]
then
  exit
fi

brew cask install --appdir="/Applications" 1password
