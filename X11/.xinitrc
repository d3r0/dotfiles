urxvtd -o -q -f
xrdb -merge ~/.config/X11/.Xresources
xrandr --output eDP-1 --primary --mode 2256x1504 --pos 2560x0 --rotate normal --output DP-1 --mode 2560x1440 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
udiskie &
exec i3
