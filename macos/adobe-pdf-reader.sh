#!/bin/sh
#
# Adobe PDF Reader
#
if [[ -n $(find /Applications -type d -name "Adobe Acrobat Reader DC.app") ]]
then
  exit
fi

brew cask install --appdir="/Applications" adobe-reader
