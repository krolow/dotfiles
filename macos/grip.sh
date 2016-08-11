#!/bin/sh
#
# grip (https://github.com/joeyespo/grip)
#

if test $(which grip)
then
  exit
fi

brew install grip
