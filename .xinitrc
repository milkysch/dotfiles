
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

## dunst service bug workaround
# https://github.com/dunst-project/dunst/issues/347
systemctl --user import-environment DISPLAY

## iBus maintains input so this is no longer needed
## at least I think so, I'm gonna leave it just in case
setxkbmap pl

## Start IMWheel to get proper scroll speed
imwheel &

# Japanese support
ibus-daemon -drx

## Start i3wm
exec i3
