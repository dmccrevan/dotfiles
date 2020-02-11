#!/bin/bash

SCREEN_LEFT=DP2
SCREEN_RIGHT=eDP1
renice +19 $$ >/dev/null
sleep 1
OLD_DUAL="dummy"
DUAL=$(cat /sys/class/drm/card0-DP-2/status)
if [ "$OLD_DUAL" != "$DUAL" ]; then
    if [ "$DUAL" == "connected" ]; then
        echo 'Dual monitor setup'
        xrandr --output $SCREEN_LEFT --auto --rotate normal --output $SCREEN_RIGHT --auto --rotate normal --left-of $SCREEN_LEFT
        nitrogen --restore
	else
        echo 'Single monitor setup'
        xrandr --auto
        nitrogen --restore
    fi
    OLD_DUAL="$DUAL"
fi
