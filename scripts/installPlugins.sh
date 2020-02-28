#!/bin/bash

# Install silver searcher and fzf
unameOut="$(uname -s)"
if [ "${unameOut}" == "Darwin" ]; then
	brew install fzf
	brew install the_silver_searcher
elif ["${unameOut}" == "Linux" ]; then
	sudo apt-get update
	sudo apt-get install fzf silversearcher-ag
fi

savefile="plugins.txt"

mkdir -p ~/.vim/bundle

while read -r l; do
	m=$(echo "$l" | sed "s/.*\///")
	git clone "$l" ~/.vim/bundle/"$m"
done < "$savefile"
