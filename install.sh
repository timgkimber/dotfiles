#!/usr/bin/env bash

# dotfiles install script based on 
# https://github.com/webpro/dotfiles/blob/master/install.sh

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" \
  --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
ln -sfv "$DOTFILES_DIR/tmux/.tmux.conf" ~

############# Vim stuff

# make sure vundle is installed
VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

[ -d "$VUNDLE_DIR/.git" ] || git clone https://github.com/VundleVim/Vundle.vim.git \
  $VUNDLE_DIR
