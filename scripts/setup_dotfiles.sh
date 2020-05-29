#!/bin/bash

rm ~/.bashrc
ln -s ~/dotfiles/bash/.bashrc ~/.bashrc

rm ~/.compton.conf
ln -s ~/dotfiles/compton/.compton.conf ~/.compton.conf

rm ~/.gitconfig
ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig

rm ~/.gitignore
ln -s ~/dotfiles/git/.gitignore ~/.gitignore

rm ~/.tmux.conf
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf

rm -rf ~/.config/i3
ln -s ~/dotfiles/i3 ~/.config

rm ~/.config/rofi
ln -s ~/dotfiles/rofi/rofi ~/.config/rofi

rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config

rm -rf ~/.config/Code/User/keybindings.json
ln -s ~/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json

rm -rf ~/.config/Code/User/settings.json
ln -s ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
