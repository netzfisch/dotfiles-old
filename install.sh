#!/bin/bash

for name in *; do
  exceptions="install.sh LICENSE README.md"
  
  if [ "$name" == "terminalrc" ]; then
    target="$HOME/.config/xfce4/terminal/$name"
  else
    target="$HOME/.$name"
  fi

  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      echo "WARNING: $target exists but is not a symlink."
    fi
  else
    if [[ ! "${exceptions[@]}" =~ "$name" ]]; then
      echo "Creating $target"
      ln -s "$PWD/$name" "$target"
    fi
  fi
done

if [ ! -e ~/.vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

vim -u ~/.vimrc.bundles +BundleInstall +qa
