#!/bin/sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" \
    background.drawing=on \
    background.color=0xaaffffff \
    icon.color=0xff111111
else
  sketchybar --set "$NAME" \
    background.drawing=on \
    background.color=0x20ffffff \
    icon.color=0x99ffffff
fi
