#!/bin/bash

state=$(echo -e "Shutdown\nReboot\nLock\nKill-Dwm" | dmenu -i -p "Choose an operation" "$@")
case "$state" in
	Shutdown)
		doas /sbin/openrc-shutdown -p now
		;;
	Reboot)
		doas /sbin/openrc-shutdown -r now
		;;
	Lock)
		slock
		;;
	Kill-Dwm)
		pkill xinit # Because in .xinitrc I put the dwm in loop to not kill the X Session
		;;
esac
