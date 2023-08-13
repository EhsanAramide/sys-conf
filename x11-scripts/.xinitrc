setxkbmap -layout us,ir -option grp:win_space_toggle

exec dbus-launch --sh-syntax --exit-with-session gentoo-pipewire-launcher &
exec ~/.config/x11-scripts/dwm-restart.sh 
