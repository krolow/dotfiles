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
if [ ! -f "${HOME}/.fonts/Knack-Regular-NerdFont.ttf" ]; then
  FONT_DOWNLOADED=true
  wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Knack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf -O "${HOME}/.fonts/Knack-Regular-NerdFont.ttf"
fi

if $FONT_DOWNLOADED ; then
  fc-cache -f -v
fi

gconftool-2 --set /apps/gnome-terminal/global/default_profile --type string one-dark
gconftool-2 --set /apps/gnome-terminal/profiles/one-dark/use_system_font --type boolean false
gconftool-2 --set /apps/gnome-terminal/profiles/one-dark/font --type string "Knack NerdFontCompleteMono 12"


# install vim configuration
source "./vim.sh"
# install tmux plugin
source "./tmux.sh"

# install oh-my-zsh
if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# links
source "${DIR}/links.sh"


# zsh as default shell
chsh -s $(which zsh)