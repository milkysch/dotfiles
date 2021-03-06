#!/usr/bin/env sh

if ! { [ "$TERM" = "tmux-256color" ] && [ -n "$TMUX" ]; } then
    urxvt -e nvim $* &
else
    # tmux session running
    tmux split-window -p 75 -h "nvim \"$*\""
fi
