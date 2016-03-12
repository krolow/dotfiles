#!/usr/bin/env bash
cd "$(dirname "$0")"
set -e
DIR=$(pwd)

# intall gnome-terminal-theme
if [ ! -d "${HOME}/.gconf/apps/gnome-terminal/profiles/one-dark" ]; then
  if [ ! -f "${DIR}/one-dark.sh" ]; then
    wget https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh
  fi

  bash "${DIR}/one-dark.sh"
  rm "${DIR}/one-dark.sh"
fi

# download fonts
if [ ! -d "${HOME}/.fonts" ]; then
   mkdir "${HOME}/.fonts"
fi


FONT_DOWNLOADED=false
if [ ! -f "${HOME}/.fonts/FiraMono-Regular.ttf" ]; then
  FONT_DOWNLOADED=true
  wget https://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Regular.ttf -P "${HOME}/.fonts/"
fi
if [ ! -f "${HOME}/.fonts/Inconsolata-Regular.ttf" ]; then
  FONT_DOWNLOADED=true
  wget http://www.fontsc.com/font/download/inconsolata -O "${DIR}/inconsolata.zip"
  unzip -o "${DIR}/inconsolata.zip"
  mv Inconsolata-*.ttf "${HOME}/.fonts/"
  rm "${DIR}/OFL.txt"
  rm "${DIR}/inconsolata.zip"
fi

if $FONT_DOWNLOADED ; then
  fc-cache -f -v
fi

gconftool-2 --set --type string /apps/gnome-terminal/global/default_profile one-dark
gconftool-2 --set /apps/gnome-terminal/profiles/one-dark/use_system_font --type=boolean false
gconftool-2 --set /apps/gnome-terminal/profiles/Default/font --type string "Fira Mono 11"


# install vim configuration
source "./vim.sh"


# install oh-my-zsh
if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi




# links
source "${DIR}/links.sh"


# zsh as default shell
chsh -s $(which zsh)
