# Extra Unorgaized Notes
---
## Changing Display with xrandr
xrandr:

    --mode"   switch mode

    "--output" choose the output

    example:

        xrandr --output HDMI-1 --mode 1920x1080 --rate 60.0

(this can be set up in xinitrc)

---
## Dmenu
setting up a script for dmenu:
script for updating the time:
```sh
while true; do
    xsetroot -name "$(date)"
    sleep 2
done
```

inside .xinitrc:
```sh
~/alpine/status_bar.sh &
```

---
## Cursor
The below apk's are for setting up cusor theme

adwaita-icon-theme libxcursor

inside .xinitrc:
```sh
xrdb -merge ~/.Xdefaults
```
inside .Xdefaults:
```sh
Xcursor.theme: Adwaita
Xcursor.size: 48
```
