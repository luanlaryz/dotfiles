#!/bin/bash


LOCALREPO="$HOME/Documentos/research/repos/dotfiles2"

echo "creating a dir and cloning the repo"

if [ ! -d "$LOCALREPO" ]; then
	mkdir $LOCALREPO
	git clone https://github.com/luanlaryz/dotfiles.git $LOCALREPO
fi

echo "coping dotfiles from $HOME to repo"


files=(".vimrc" ".zshrc" ".tmux.conf")


for file in "${files[@]}"; do
	echo "coping $file"
	cp  "$LOCALREPO/$file" $HOME/$file
done

echo "All files have been copied to your local home, please restart your shell.. :) "


