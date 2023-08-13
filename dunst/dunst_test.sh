#!/bin/sh

killall dunst

# Simple Notifications with low, normal and critical urgency
dunstify -r 1 --urgency=normal "Title" "Simple Notification\nNormal Urgency"
dunstify --urgency=low "Title" "Simple Notification\nLow Urgency"
dunstify --urgency=critical "Title" "Simple Notification\nCritical Urgency"

dunstify -r 2 --urgency=normal -h string:category:device.added "Title" "Notification with 'device.added' category"

# Notification with icon image
dunstify -i ~/.config/dwm/backgrounds/002.png "Title" "This is a simple summery\nImage saved in ~/.config/dwm/backgrounds/"
