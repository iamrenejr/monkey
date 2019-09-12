#!/bin/bash

savefile="plugins.txt"

rm "$savefile"

for a in ~/.vim/bundle/*; do
	grep -oh 'https:\/\/github.com.*$' "$a"/.git/config >> "$savefile"
done
