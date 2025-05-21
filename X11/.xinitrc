# start the urxvt daemon
urxvtd --opendisplay --quiet --fork

# Apply configuration from .Xresources
xrdb -merge "$XDG_CONFIG_HOME/X11/.Xresources"

# Configure keyboard
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape' &
xset r rate 200 30

# Apply default screen layout
sh "$XDG_CONFIG_HOME/X11/default"

# Start i3
exec i3

#vim: set ft=sh:
