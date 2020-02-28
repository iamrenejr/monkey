#!/bin/bash

cp ~/.bash_profile dotfiles/.bash_profile
cp ~/.zshrc dotfiles/.zshrc
cp ~/.vimrc dotfiles/.vimrc
cp ~/.tmux.conf dotfiles/.tmux.conf
cp ~/.gitconfig dotfiles/.gitconfig

cp -r ~/.config/tmuxinator tmuxinator
