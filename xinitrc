#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

xset -b

numlockx &

xscreensaver -no-splash &

exec xfce4-session
