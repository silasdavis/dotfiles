#!/bin/bash
DEFAULT_SESSION=twm

case $1 in
kde)
	exec startkde
	;;
xfce4)
	exec startxfce4
	;;
icewm)
	icewmbg &
	icewmtray &
	exec icewm
	;;
openbox)
        export DE=xfce
        exec ck-launch-session dbus-launch openbox-session
        #exec ck-launch-session dbus-launch xfce4-session
	;;
xmonad)
        trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 6 --transparent true --alpha 0 --tint 0x000000 --height 16 &  
        nitrogen --restore &  
        xfce4-power-manager &
        xfce4-volumed &
        nm-applet &  
        # set the cursor  
        xsetroot -cursor_name left_ptr  
        # set keyboard layout  
        setxkbmap -layout uk
        # start xmonad  
        exec ck-launch-session dbus-launch xmonad
	;;
*)
	exec $DEFAULT_SESSION
	;;
esac
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
