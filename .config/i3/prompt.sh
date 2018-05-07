#!/bin/sh

[ $(echo -e "NO\nYES" | dmenu -nb '#151515' -nf '#999999' -sb '#f00060' -sf '#000000' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*'  -i -p "$1") \
  == "YES" ] && $2

