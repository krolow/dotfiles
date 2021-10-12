#!/bin/sh
#
# MacOS provision
#

cd "$(dirname "$0")"
set -e
DIR=$(pwd)

# install apps
echo "${DIR}/../macos/*.sh"
for file in "${DIR}/../macos/*.sh"; do
  bash $file -H
done

# Increase keyboard speed
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10

# Install font
# if [ ! -f "${HOME}/Library/Fonts/Knack-Regular-NerdFont.ttf" ]; then
#  wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Knack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf -O "~/Library/Fonts/Knack-Regular-NerdFont.ttf"
# fi

# install iterm profile
if [ ! -d "${DIR}/../macos/themes/iterm" ]; then
  mkdir -p $DIR/../macos/themes/iterm/
  git clone https://github.com/joshdick/onedark.vim $DIR/../macos/themes/iterm/one-dark
fi

defaults write com.apple.terminal FocusFollowsMouse -bool true
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.googlecode.iterm2 HideTab -bool true

#open "${DIR}/../macos/themes/iterm/one-dark/One Dark.itermcolors"
