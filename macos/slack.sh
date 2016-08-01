#!/bin/sh
#
# Slack
#

if [[ -n $(find /Applications -type d -name "Slack.app") ]]
then
  exit
fi

brew cask install --appdir="/Applications" slack
