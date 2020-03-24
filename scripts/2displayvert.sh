#!/bin/sh

xrandr --output DVI-D-0 --mode 1920x1080 --rate 144
xrandr --newmode "1680x1050_60.00"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
xrandr --addmode HDMI-A-1 1680x1050_60.00
xrandr --output HDMI-A-1 --mode 1680x1050_60.00 --rate 60 --left-of DVI-D-0 --rotate right
xrandr --output DVI-D-0 --primary

xsetwacom set "Wacom Intuos PT S Pen stylus" MapToOutput 1920x1080+1050+0
xsetwacom set "Wacom Intuos PT S Pen eraser" MapToOutput 1920x1080+1050+0
