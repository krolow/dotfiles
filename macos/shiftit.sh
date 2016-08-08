#!/bin/sh
#
# Shiftit
#
if [[ -n $(find /Applications -type d -name "ShiftIt.app") ]]
then
  exit
fi

brew cask install --appdir="/Applications" shiftit
