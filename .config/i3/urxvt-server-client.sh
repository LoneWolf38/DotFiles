#!/bin/sh

urxvtc "$@"
if [ $? -eq 2 ]; then
    urxvtd -f -q -o
    urxvtc "$@"
fi


