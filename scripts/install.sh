#!/usr/bin/env bash
cd "$(dirname "$0")"
set -e
DIR=$(pwd)

if [ "$(uname)" == "Darwin" ]; then
  bash -c "./install-macos.sh"
else
  bash -c "./install-linux.sh"
fi

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


# clone theme
mkdir -p "${HOME}/.oh-my-zsh/custom/themes/"
curl -l https://raw.githubusercontent.com/krolow/thunder-zsh/master/thunder.zsh-theme > "${HOME}/.oh-my-zsh/custom/themes/thunder.zsh-theme"

# zsh as default shell
chsh -s $(which zsh)
