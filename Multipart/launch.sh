sleep 0.1
polybar topbar-left -r -c ~/.config/polybar/Multipart/main/config.ini &
sleep 0.1
polybar topbar-tray -r -c ~/.config/polybar/Multipart/main/config.ini &
sleep 0.1
polybar topbar-center -r -c ~/.config/polybar/Multipart/main/config.ini &
sleep 0.1
polybar topbar-beast -r -c ~/.config/polybar/Multipart/main/config.ini &
sleep 0.1
polybar topbar-right -r -c ~/.config/polybar/Multipart/main/config.ini &

if [[ $(xrandr -q | grep "HDMI-A-0 connected") ]]; then
  sleep 0.1
  polybar topbar-left -r -c ~/.config/polybar/Multipart/external/config.ini &
  sleep 0.1
  polybar topbar-tray -r -c ~/.config/polybar/Multipart/external/config.ini &
  sleep 0.1
  polybar topbar-center -r -c ~/.config/polybar/Multipart/external/config.ini &
  sleep 0.1
  polybar topbar-beast -r -c ~/.config/polybar/Multipart/external/config.ini &
  sleep 0.1
  polybar topbar-right -r -c ~/.config/polybar/Multipart/external/config.ini &
fi
