#!/bin/sh
#
# Spotify
#

if [[ -n $(find /Applications -type d -name "Spotify.app") ]]
then
  exit
fi

brew cask install --appdir="/Applications" spotify
