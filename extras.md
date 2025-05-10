# Extra Unorgaized Notes
---
## Changing Display with xrandr
xrandr:

    --mode     switch mode

    --output   choose the output

    example:

        xrandr --output HDMI-1 --mode 1920x1080 --rate 60.0

(this can be set up in xinitrc)

---
## Dmenu

apks needed:
```sh
doas apk add xsetroot
```


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


```sh
doas apk add adwaita-icon-theme libxcursor
```


inside .xinitrc:
```sh
xrdb -merge ~/.Xdefaults
```
inside .Xdefaults:
```sh
Xcursor.theme: Adwaita
Xcursor.size: 48
```

---
## Background image
Apk's needed:

```sh
doas apk add feh
```

inside xinitrc:
```sh
feh --bg-scale ~/path_to_bg &
```

---
## Alias's in ash
ash is a different from bash in that .ashrc are not loaded on startup of the shell

so you have to add an ENV varible to the profile like so

```sh
export ENV=$HOME/.ashrc
```
then you can use it .ashrc freely




