#!/bin/bash
if [[ ! -p $HOME/.mpvinput ]]; then
    mkfifo $HOME/.mpvinput
fi
vidsites="youtube.com
    \|youtu.be
    \|vimeo.com
    \|streamable.com
    \|gfycat.com
    \|nicovideo.jp
    \|twitch.tv"
ext="${1##*.}"
mpvFiles="mkv mp4 gif webm gifv"
fehFiles="png jpg jpeg jpe"
if echo $fehFiles | grep -w $ext > /dev/null; then
    feh "$1" >/dev/null &
elif pgrep -f MPV-Q > /dev/null
then
    notify-send "$(echo -e "Now playing in PIP mpv\n $1")"
    printf "%s\n" "loadfile \"$1\"" > $HOME/.mpvinput
else
#    if echo $mpvFiles | grep -w $ext > /dev/null; then
#        notify-send "$(echo -e "Now playing in PIP mpv\n $1")"
#        mpv ---ytdl-format=best -x11-name=MPV-Q --input-file=$HOME/.mpvinput --loop "$1" > /dev/null &
    #elif echo "$@" | grep "$vidsites">/dev/null; then
    if echo "$@" | grep "$vidsites">/dev/null; then
        notify-send "$(echo -e "Launching PIP mpv and playing \n $1")"
        mpv --ytdl-format=best --ytdl-raw-options=netrc= --x11-name=MPV-Q --input-file=$HOME/.mpvinput "$1" > /dev/null &
    fi
fi
