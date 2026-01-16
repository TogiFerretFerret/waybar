#!/bin/bash

PLAYER_STATUS=$(playerctl status 2>/dev/null)

if [ "$PLAYER_STATUS" = "Playing" ] || [ "$PLAYER_STATUS" = "Paused" ]; then
    # Output the current track info
    echo "$(playerctl metadata title|kakasi -Ka -Ha -Ja) - $(playerctl metadata artist |kakasi -Ka -Ha -Ja)"
else
    # Output custom text when nothing is playing/active
    echo "■ No media playing"
fi

