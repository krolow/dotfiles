#!/bin/sh
#
# VirtualBox
#
if test $(which vagrant)
then
  exit
fi

brew cask install --appdir="/Applications" vagrant
