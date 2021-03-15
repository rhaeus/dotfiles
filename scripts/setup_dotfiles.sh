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

rm -rf ~/.config/rofi
ln -s ~/dotfiles/rofi ~/.config/rofi

rm -rf ~/.config/bspwm
ln -s ~/dotfiles/bspwm ~/.config/bspwm

rm -rf ~/.config/dunst
ln -s ~/dotfiles/dunst ~/.config/dunst

rm -rf ~/.config/sxhkd
ln -s ~/dotfiles/sxhkd ~/.config/sxhkd

rm -rf ~/.config/polybar
ln -s ~/dotfiles/polybar ~/.config/polybar

rm -rf ~/.config/terminator
ln -s ~/dotfiles/terminator ~/.config/terminator

rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config

#rm -rf ~/.config/Code/User/keybindings.json
#ln -s ~/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json

#rm -rf ~/.config/Code/User/settings.json
#ln -s ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
