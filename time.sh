#!/bin/bash
echo "[$([ $(date +'%H%M') == '0000' ] && (date +'%H:%M' & pkill -RTMIN+10 dwmblocks) || date +'%H:%M')] "
