#!/usr/bin/env bash

# dotfiles install script based on 
# https://github.com/webpro/dotfiles/blob/master/install.sh

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first

# [ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" \
#   --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~

# Need to select tmux conf according to version
str=`tmux -V`
tmux_version=${str#"tmux "}
case $tmux_version in
  1.6) ln -sfv "$DOTFILES_DIR/tmux/1.6/.tmux.conf" ~;;
  *) ln -sfv "$DOTFILES_DIR/tmux/1.6/.tmux.conf" ~;;
esac

############# Vim stuff

# make sure vundle is installed
VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

[ -d "$VUNDLE_DIR/.git" ] || git clone https://github.com/VundleVim/Vundle.vim.git \
  $VUNDLE_DIR
