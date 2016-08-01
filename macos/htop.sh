#!/bin/sh
#
# htop 
#

if test $(which htop)
then
  exit
fi

brew install htop
