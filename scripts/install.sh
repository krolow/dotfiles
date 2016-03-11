#!/usr/bin/env bash
set -e

DIR=$(pwd)

# intall gnome-terminal-theme
if [ ! -f "${DIR}/one-dark.sh" ]; then
  wget https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh
fi

bash "${DIR}/one-dark.sh"
rm "${DIR}/one-dark.sh"
# download fonts
if [ ! -f "${HOME}/.fonts"]; then
  mkdir "${HOME}/.fonts"
fi

wget https://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Regular.ttf -P "${HOME}/.fonts/"
wget http://www.fontsc.com/font/download/inconsolata -O "${DIR}/inconsolata.zip"
unzip -o "${DIR}/inconsolata.zip"
mv Inconsolata-*.ttf "${HOME}/.fonts/"
rm "${DIR}/OFL.txt"
rm "${DIR}/inconsolata.zip"

fc-cache -f -v
