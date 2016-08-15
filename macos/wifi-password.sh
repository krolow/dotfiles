#!/bin/sh
#
# tmux
#

if test $(which wifi-password)
then
  exit
fi

brew install wifi-password
