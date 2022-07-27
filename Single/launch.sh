sleep 0.1
polybar single -r -c ~/.config/polybar/Single/config.ini &
if [[ $(xrandr -q | grep "HDMI-A-0 connected") ]]; then
  sleep 0.1
  polybar single -r -c ~/.config/polybar/Single/config-external.ini &
fi
