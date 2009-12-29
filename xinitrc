#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

export GNOME_DESKTOP_SESSION_ID="01" # fool xdg-open

xset -b

numlockx &

xscreensaver -no-splash &

#exec ck-launch-session xfce4-session
exec `ck-launch-session dbus-launch --exit-with-session --sh-syntax xfce4-session`
