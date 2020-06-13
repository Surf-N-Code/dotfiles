if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload norman_1 &
  done
else
  polybar --reload norman_1 &
fi
