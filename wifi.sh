#!/bin/bash

echo "[Wif$(( [ -z '$(ping -c 1 192.168.1.1)' ] && echo -n  '-' || echo -n '+' ); awk 'FNR == 3 {print int($3*100/70)}' /proc/net/wireless)%] "


