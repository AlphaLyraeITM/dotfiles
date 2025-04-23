#!/bin/bash
xrandr --output DP-1 --mode 3440x1440 --rate 60 && \
xrandr --output DP-2 --mode 2560x1440 --right-of DP-1 && \
xgamma -gamma 0.9
