#!/bin/sh
#
# wget
#

if [ ! -d ~/.nvm ] ;
then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash
fi

if [ ! -d ~/.nvm/bin/node-v4* ] ;
then
  nvm install 4
fi

if [ ! -d ~/.nvm/bin/node-v6* ] ;
then
  nvm install 6
fi

source ~/.zshrc

nvm alias default 6
