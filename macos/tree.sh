#!/bin/sh
#
# brew install tree
#

if test $(which tree)
then
  exit
fi

brew install tree
