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
## Dmenu Notes

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
## Cursor Notes
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
## Background image Notes
Apk's needed:

```sh
doas apk add feh
```

inside xinitrc:
```sh
feh --bg-scale ~/path_to_bg &
```

---
## Alias's in sh Notes
sh is a different from bash: ash does not have an .bashrc or anything
similar loaded on startup of the shell

so you have to add an ENV varible to the .profile like below

```sh
export ENV=$HOME/.shinit
```
(sh init)

then .shinit can be used like a .bashrc

---
## Tailscale notes:
upload the image on the other machine

on the linux machine do
```sh
doas tailscale file get .
```




