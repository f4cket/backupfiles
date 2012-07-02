#xscreensaver -nosplash &
killall magneto
magneto &
#compton -I 2 -O 2 -D 20 -m 2 -c -C  -z -f -b          
#compton -cCGb
nitrogen --restore &
#gempaper set najs.jpg &
# Cursor
xsetroot -cursor_name left_ptr -fg lightblue -bg black &
# unclutter -idle 5 -jitter 5 -root
#compton -m 3 -c -F -i 1.0 -r 11 -b
#xcompmgr -a &
#conky | while read -r; do xsetroot -name "$REPLY"; done &
# conky för wmfs
#conky -c .conkyrc-wmfs | while read -r; do wmfs -c status "default $REPLY"; done & 
#xsetroot -solid "#002b36"
#stump-swank.sh
xset +fp /usr/share/fonts/dfx
xset fp rehash
xmodmap /home/simon/.xmodmap
xmodmap -e 'keysym Num_Lock = XF86AudioMute' 
xmodmap -e 'keysym Pause = XF86AudioStop'
xmodmap -e 'keysym Scroll_Lock = XF86AudioRaiseVolume'
setxkbmap -option terminate:ctrl_alt_bksp
stumpwm
