killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.2; done

export BAR_LABEL_SEPARATOR="%{T5}%{F$(xrdb -query | grep "*.color14" | cut -f 2)}%{F-}%{T-}"

polybar topbar-left -r -c ~/.config/polybar/Multipart/config.ini &
polybar topbar-center -r -c ~/.config/polybar/Multipart/config.ini &
polybar topbar-right -r -c ~/.config/polybar/Multipart/config.ini &
polybar topbar-beast -r -c ~/.config/polybar/Multipart/config.ini &
polybar topbar-tray -r -c ~/.config/polybar/Multipart/config.ini &
