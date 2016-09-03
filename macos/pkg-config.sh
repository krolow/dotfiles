#!/bin/sh
#
# pkg-config
#

if test $(which pkg-config)
then
  exit
fi

brew install pkg-config
