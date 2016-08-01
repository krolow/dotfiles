#!/bin/sh
#
# wget
#

if test $(which wget)
then
  exit
fi

brew install wget
