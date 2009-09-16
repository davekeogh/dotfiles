#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

xset -b

numlockx &

xscreensaver -no-splash &

exec ck-launch-session xfce4-session
