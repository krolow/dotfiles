if [ ! $DIR ]; then
  cd "$(dirname "$0")"
fi

DOTFILES=$(dirname "$(pwd)")

links=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )

for link in $links; do
  target="${HOME}/.$(basename $link ".symlink")"

  if [ -f $target ]; then
    echo "Skip ${target} ..."
  else
    echo "Creating symlink for ${target}"
    ln -s $link $target
  fi
done
