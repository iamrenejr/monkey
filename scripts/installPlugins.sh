#!/bin/bash

savefile="plugins.txt"

mkdir -p ~/.vim/bundle

while read -r l; do
	m=$(echo "$l" | sed "s/.*\///")
	git clone "$l" ~/.vim/bundle/"$m"
done < "$savefile"
