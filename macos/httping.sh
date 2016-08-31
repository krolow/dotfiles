#!/bin/sh
#
# brew install httping
#

if test $(which httping)
then
  exit
fi

brew install httping
