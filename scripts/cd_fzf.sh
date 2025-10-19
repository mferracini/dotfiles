#!/usr/bin/env zsh

SELECTED_BASE=($(ls $HOME/workspace/ | fzf))
SELECTED=($(ls $HOME/workspace/$SELECTED_BASE | fzf))
FINAL_PATH=$HOME/workspace/$SELECTED_BASE/$SELECTED
echo $FINAL_PATH

# new-session  -c $FINAL_PATH  -n nvim -s $SELECTED  nvim

