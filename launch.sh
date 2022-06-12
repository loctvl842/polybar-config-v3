killall polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.2; done

# Wait until the processes have been shut down

shape="Single"

fix bspwm top gap
wm=$(wmctrl -m | grep Name | grep -oP ': \K\w+')

if [[ $wm == "bspwm" ]]; then
	ADDITIONAL_GAP=0
	BSPWM_CONFIG='/home/loc/.config/bspwm/bspwmrc'

	height=$(grep -w height ~/.config/polybar/bar-settings.ini | grep -oP 'height = \K\w+')
	border_size=$(grep -w border-size ~/.config/polybar/bar-settings.ini | grep -oP 'border-size = \K\w+')

	newGap=`expr $height + $border_size + $ADDITIONAL_GAP`
	sed -i -e "0,/top_padding .*/s//top_padding $newGap/" $BSPWM_CONFIG
	bspc config top_padding $newGap
fi

~/.config/polybar/$shape/launch.sh
