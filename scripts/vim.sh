#!/usr/bin/env bash
set -e

if [ ! $DIR ]; then
  cd "$(dirname "$0")"
fi

DOTFILES=$(dirname "$(pwd)")
VIM_DIR="${HOME}/.vim"

# ensure we have .vim directory
if [ ! -d $VIM_DIR ]; then
  mkdir $VIM_DIR
fi


# create directories in .vim if they do not exists
directories=$( ls -d $VIM_DIR/*/ )

for directory in $directories; do
  if [ ! -d $directory ]; then
    mkdir $directory
  fi
done

# install vim-plug
if [ ! -f "${VIM_DIR}/autoload/plug.vim" ]; then
  wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P "${HOME}/.vim/autoload"
fi
