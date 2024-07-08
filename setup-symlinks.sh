#!/bin/bash

CURRENT_DIR=$(pwd)
SRC_DIR="$CURRENT_DIR/.dotfiles"

# Files
ln -sfi "$SRC_DIR/.zshrc" "$HOME/.zshrc"
ln -sfi "$SRC_DIR/.tmux.conf" "$HOME/.tmux.conf"

# Folders
TARGET="$HOME/.config/nvim"
ln -shfi "$SRC_DIR/.config/nvim/" "$HOME/.config"
