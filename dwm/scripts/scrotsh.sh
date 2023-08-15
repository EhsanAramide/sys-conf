#!/bin/sh

date=$(date '+%Y-%m-%d-%H-%M-%S')
filename="${date}.png"
filepath=/home/$USER/Pictures/screenshots/$filename

case "$1" in
	-s | --select)
		scrot -s -z -F $filepath
		;;
	*)
		scrot -z -F $filepath
		;;
esac

dunstify -i "${filepath}"  "Scrot" "Screenshot saved in ${filepath}"
