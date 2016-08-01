#!/bin/sh
#
# the_silver_searcher
#

if test $(which ag)
then
  exit
fi

brew install the_silver_searcher
