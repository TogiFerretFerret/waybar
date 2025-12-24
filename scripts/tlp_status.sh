#!/bin/bash
# Get TLP Status (Mode = AC or Battery)
TLP_MODE=$(tlp-stat -s | grep "Mode" | awk '{print $3}')

if [[ "$TLP_MODE" == "AC" ]]; then
    TEXT="AC Mode"
    ICON=""
    CLASS="ac"
    TOOLTIP="TLP: Performance/AC"
else
    TEXT="Bat Mode"
    ICON=""
    CLASS="bat"
    TOOLTIP="TLP: Power Saver/Battery"
fi

echo "{\"text\": \"$ICON $TEXT\", \"tooltip\": \"$TOOLTIP\", \"class\": \"$CLASS\"}"
