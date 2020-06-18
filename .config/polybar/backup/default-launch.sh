if type "xrandr"; then
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar example -c ~/.config/polybar/backup/default-config.ini >>/tmp/polybar1.log 2>&1 &
  done
else
  polybar example -c ~/.config/polybar/backup/default-config.ini >>/tmp/polybar1.log 2>&1 &
fi
