xrdb -merge -I$HOME ~/.Xresources
eval $(ssh-agent)
xbindkeys &
xset m 3/1 0
echo 8 > /sys/class/backlight/acpi_video0/brightness
redshift &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
setxkbmap -layout "us,us" -variant ",colemak" -option "ctrl:nocaps" -option "grp:menu_toggle" -option "altwin:swap_lalt_lwin"
~/bin/dwm.sh &
feh --bg-scale ~/.wall.jpg
exec dwm
