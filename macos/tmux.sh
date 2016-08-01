#!/bin/sh
#
# tmux
#

if test $(which tmux)
then
  exit
fi

brew install tmux
