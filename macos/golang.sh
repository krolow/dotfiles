#!/bin/sh
#
# brew install go
#

if test $(which go)
then
  exit
fi

brew install go
