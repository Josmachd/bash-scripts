#!/bin/bash
echo "[Vol$([ $(pamixer --get-mute) = true ] && echo '-' || echo '+' & pamixer --get-volume)%]"
