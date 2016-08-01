#!/bin/sh
#
# MacOS provision
#

cd "$(dirname "$0")"
set -e
DIR=$(pwd)

# install apps
for file in "${DIR}/../macos/*.sh"; do
  bash -c $file
done

# Install font
# if [ ! -f "${HOME}/Library/Fonts/Knack-Regular-NerdFont.ttf" ]; then
#  wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Knack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf -O "~/Library/Fonts/Knack-Regular-NerdFont.ttf"
# fi

# install iterm profile
if [ ! -d "${DIR}/../macos/themes/iterm" ]; then
  mkdir -p $DIR/../macos/themes/iterm/
  git clone https://github.com/nathanbuchar/atom-one-dark-terminal.git $DIR/../macos/themes/iterm/one-dark
fi

defaults write com.apple.terminal FocusFollowsMouse -bool true
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.googlecode.iterm2 HideTab -bool true

open "${DIR}/../macos/themes/iterm/one-dark/scheme/iterm/One Dark.itermcolors"
