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
if [ ! -f "${HOME}/.fonts/FuraMono-Regular-NerdFont.otf" ]; then
  FONT_DOWNLOADED=true
  wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20for%20Powerline%20Nerd%20Font%20Complete%20Mono.otf -O "${HOME}/.fonts/FuraMono-Regular-NerdFont.otf"
fi

if $FONT_DOWNLOADED ; then
  fc-cache -f -v
fi

gconftool-2 --set --type string /apps/gnome-terminal/global/default_profile one-dark
gconftool-2 --set /apps/gnome-terminal/profiles/one-dark/use_system_font --type=boolean false
gconftool-2 --set /apps/gnome-terminal/profiles/one-dark/font --type string "Fura Mono for Powerline 12"


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
