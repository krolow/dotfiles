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
directories=$( ls -d $DOTFILES/vim/*/ )

for directory in $directories; do
  if [ ! -d $directory ]; then
    mkdir $directory
  fi
done

# install vim-plug
if [ ! -f "${VIM_DIR}/autoload/plug.vim" ]; then
  wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P "${VIM_DIR}/autoload"
fi

# download color theme
if [ ! -f "${VIM_DIR}/colors/onedark.vim" ]; then
  wget https://raw.githubusercontent.com/joshdick/onedark.vim/master/colors/onedark.vim -P "${VIM_DIR}/colors"
fi

#create symlinks for *.vim into .vim directory
files=$( ls $DOTFILES/vim/*.vim )
echo $files
for file in $files; do
  target="$VIM_DIR/$(basename $file)"

  if [ ! -f $target ]; then
    ln -s $file $target
  fi
done
