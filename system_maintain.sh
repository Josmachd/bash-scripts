#!/bin/bash

printf "\n\nUPDATING SYSTEM\n"
sudo pacman -Syu

printf "\n\nSAVING PKG LOGS\n"
pacman -Qqe > /home/jose/.logs/pkglist.txt

printf "\n\nCHECKING ERRORS IN /var/log AND SYSTEMD JORNAL\n"
journalctl -p 3 -b --no-pager

printf "\n\nCHECKING PKG CORRUPTION BY SOFT/HARD(WARE) FAILURE\n"
sudo paccheck --md5sum --quiet

printf "\n\nCOUNTING FILES IN ~/\n"
printf "$(ls -a /home/jose/ | wc -l)\n\n"
