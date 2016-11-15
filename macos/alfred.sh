#!/bin/sh
#
# Alfred
#
if [[ -n $(find /Applications -type d -name "Alfred 3.app") ]]
then
  exit
fi

brew cask install --appdir="/Applications" alfred
