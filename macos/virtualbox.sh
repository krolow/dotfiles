#!/bin/sh
#
# VirtualBox 
#

if [[ -n $(find /Applications -type d -name "VirtualBox.app") ]]
then
  exit
fi

brew cask install --appdir="/Applications" virtualbox
