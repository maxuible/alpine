xrandr:
  "--mode"   switch mode
  "--output" choose the output
  example:
    xrandr --output HDMI-1 --mode 1920x1080 --rate 60.0

  (this can be set up in xinitrc)


The below apk's are for setting up cusor theme
adwaita-icon-theme libxcursor

xrdb -merge ~/.Xdefaults

inside .Xdefaults
Xcursor.theme: Adwaita
Xcursor.size: 48
