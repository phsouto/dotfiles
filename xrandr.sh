#!/usr/bin/env bash

# xrandr.sh
# Purpose: Config xrandr to display properly on LG Ultrawide (2560x1080)
# This solution only works on x.org

xrandr --newmode "2560x1080_60.00"  230.00  2560 2720 2992 3424  1080 1083 1093 1120 -hsync +vsync
xrandr --addmode HDMI-1 2560x1080_60.00
xrandr --output HDMI-1 --mode 2560x1080_60.00
