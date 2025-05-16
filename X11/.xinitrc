urxvtd -o -q -f
xrdb -merge "$XDG_CONFIG_HOME/X11/.Xresources"
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape' &
xset r rate 200 30
sh "$XDG_CONFIG_HOME/X11/default"
exec i3
