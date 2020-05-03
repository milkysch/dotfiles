[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# BenQ XL2411Z ICM profile
/usr/bin/xcalib -d :0 /usr/share/color/icc/colord/benq120.icc

## Picom
# Enables GPU window rendering and other stuff inc. VSync 
# so it will introduce at least one frame of input lag!
picom -b -d :0

## dunst service bug workaround
# https://github.com/dunst-project/dunst/issues/347
systemctl --user import-environment DISPLAY

## iBus maintains input so this is no longer needed
## at least I think so, I'm gonna leave it just in case
setxkbmap pl

## Start IMWheel to get proper scroll speed
#imwheel &

# Japanese support
ibus-daemon -drx

## Start i3wm
exec i3
