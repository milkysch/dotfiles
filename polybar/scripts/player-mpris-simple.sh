#!/bin/sh

player_status=$(playerctl --ignore-player=chromium status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo " $(playerctl --ignore-player=chromium metadata artist) - $(playerctl --ignore-player=chromium metadata title)"
elif [ "$player_status" = "Paused" ]; then
    echo " $(playerctl --ignore-player=chromium metadata artist) - $(playerctl --ignore-player=chromium metadata title)"
else
    echo ""
fi
