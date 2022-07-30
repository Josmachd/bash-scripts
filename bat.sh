#!/bin/bash

echo "[Bat$(([ $(cat /sys/class/power_supply/BAT1/status) == 'Discharging' ] && echo -n '-' || echo -n '+'); (cat /sys/class/power_supply/BAT1/capacity))%] "
