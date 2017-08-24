xscreensaver -no-splash &
xrdb -merge -I$HOME ~/.Xresources
eval $(ssh-agent)
xbindkeys &
xset m 3/1 0
echo 10 > /sys/class/backlight/acpi_video0/brightness
exec spectrwm 
