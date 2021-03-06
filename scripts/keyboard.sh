#! /bin/bash

# clear ooptions
setxkbmap -option

# set us international layout (with dead keys)
setxkbmap -layout us -variant intl

# make CapsLock behave like Ctrl:
setxkbmap -option ctrl:nocaps

# make double-shift toggle caps lock
setxkbmap -option shift:both_capslock

# make short-pressed Ctrl behave like Escape:
xcape -e 'Control_L=Escape'
