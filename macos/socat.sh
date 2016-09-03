#!/bin/sh
#
# socat
#

if test $(which socat)
then
  exit
fi

brew install socat
