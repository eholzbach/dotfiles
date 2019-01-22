xrdb -merge -I$HOME ~/.Xresources
eval $(ssh-agent)
xbindkeys &
xset m 3/1 0
echo 8 > /sys/class/backlight/acpi_video0/brightness
xset +fp /home/echo/.fonts
xset +fp /home/echo/.local/share/fonts
xset fp rehash
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
redshift &
~/bin/dwm.sh &
exec dwm
