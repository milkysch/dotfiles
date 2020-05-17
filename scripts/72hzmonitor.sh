#!/bin/bash

# Set the right (144)hz for the DVI monitor
xrandr --output DVI-D-0 --mode 1920x1080 --rate 144 --primary
# 72hz HDMI monitor
xrandr --newmode "1920x1080_72.00"  210.25  1920 2056 2256 2592  1080 1083 1088 1128 -hsync +vsync
xrandr --addmode HDMI-A-1 "1920x1080_72.00"
xrandr --output HDMI-A-1 --mode "1920x1080_72.00"
