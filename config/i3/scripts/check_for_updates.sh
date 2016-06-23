#!/bin/sh
# check for updates

manager=${1:-"pacman"}
count=$($manager -Qu | wc -l)

[[ $count -gt 0 ]] && echo " ($count)" || echo ""