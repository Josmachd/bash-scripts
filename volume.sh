#!/bin/bash

echo "[Vol$(([ $(pamixer --get-mute) = true ] && echo -n '-' || echo -n '+'); pamixer --get-volume)%] "
