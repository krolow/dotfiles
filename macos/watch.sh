#!/bin/sh
#
# watch
#

if test $(which watch)
then
  exit
fi

brew install watch 
