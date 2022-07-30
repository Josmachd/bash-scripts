#!/bin/bash

if [ $(playerctl --player="spotify" status) == "Playing" ]; then
    out=$(playerctl metadata --format '{{ artist }}, {{ title }}')
    [ ${#out} -le 30 ] && echo "[${out}] " || echo "[${out::30}...] "
else
    echo ""
fi

