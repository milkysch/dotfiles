#!/bin/sh

xrandr --newmode "720x1280_60.00"  77.59  720 768 848 976  1280 1281 1284 1325  -HSync +Vsync
xrandr --newmode "1280x720_60.00"  74.48  1280 1336 1472 1664  720 721 724 746  -HSync +Vsync

xrandr --addmode DisplayPort-0 1280x720_60.00

xrandr --output DisplayPort-0 --mode 1280x720_60.00 --left-of eDP
