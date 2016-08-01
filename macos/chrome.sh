#!/bin/sh
#
# Google Chrome
#
if [[ -n $(find /Applications -type d -name "*Chrome.app") ]]
then
  exit
fi

brew cask install --appdir="/Applications" google-chrome
