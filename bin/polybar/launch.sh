#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

sleep 1;

# Launch polybar
OLD_DUAL="dummy"
DUAL=$(cat /sys/class/drm/card0-DP-2/status)
if [ "$OLD_DUAL" != "$DUAL" ]; then
	if [ "$DUAL" == "connected" ]; then
		echo "Hey!"
		polybar eDP1 -c /home/$USER/.config/polybar/config &
		polybar DP2 -c /home/$USER/.config/polybar/config &
	else
		echo "oh"
		polybar eDP1 -c /home/$USER/.config/polybar/config &
	fi
fi


