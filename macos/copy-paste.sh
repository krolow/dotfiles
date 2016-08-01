#!/bin/sh
#
# brew install reattach-to-user-namespace
#

if test $(which treattach-to-user-namespace)
then
  exit
fi

brew install reattach-to-user-namespace
