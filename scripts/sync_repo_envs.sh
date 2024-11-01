#!/bin/bash


LOCALREPO="$HOME/Documentos/research/repos/dotfiles2"

echo "creating a dir and cloning the repo"

if [ ! -d "$LOCALREPO" ]; then
	mkdir $LOCALREPO
	git clone https://github.com/luanlaryz/dotfiles.git $LOCALREPO
fi

echo "coping dotfiles FROM $HOME TO repo"


files=(".vimrc" ".zshrc" ".tmux.conf")


for file in "${files[@]}"; do
	echo "coping $file"
	cp  "$HOME/$file" "$LOCALREPO/$file" 
done

echo "All files have been UPDATED please check and commit tham :) "


