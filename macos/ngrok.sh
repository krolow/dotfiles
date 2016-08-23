#!/bin/sh
#
# ngrok
#

if test $(which ngrok)
then
  exit
fi

brew cask install ngrok
