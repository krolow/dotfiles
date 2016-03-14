if [ ! -d "${HOME}/.tmux/plugins/tpm" ]; then
  mkdir -p "${HOME}/.tmux/plugins/tpm"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
