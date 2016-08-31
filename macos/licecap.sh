#!/bin/sh
#
# Licecap
#

if [[ -n $(find /Applications -type d -name "LICEcap.app") ]]
then
  exit
fi

brew cask install --appdir="/Applications" licecap
