#!/bin/sh

# ===Nord colors===

nord0='#3B4252' 
nord0semi='#3B42527F'   
nord1='#BF616A'
nord2='#A3BE8C'  
nord3='#EBCB8B'
nord4='#81A1C1'
nord5='#B48EAD'
nord6='#88C0D0'
nord7='#E5E9F0'
nord8='#4C566A'
nord9='#BF616A'
nord10='#A3BE8C'
nord11='#EBCB8B'
nord12='#81A1C1'
nord13='#B48EAD'
nord14='#8FBCBB'
nord15='#ECEFF4'


i3lock -i /home/ramona/dotfiles/pictures/lock.png \
--clock --indicator \
--timestr="%H:%M" --datestr="%a %d.%m.%Y" \
--veriftext="unlocking" --wrongtext="Try again!" \
\
--insidevercolor=$nord2  \
--ringvercolor=$nord2     \
\
--insidecolor=$nord0 \
--ringcolor=$nord4        \
--linecolor=$nord8    \
--separatorcolor=$nord0   \
--keyhlcolor=$nord2       \
\
--insidewrongcolor=$nord1 \
--ringwrongcolor=$nord5   \
\
--verifcolor=$nord8 \
--timecolor=$nord7        \
--datecolor=$nord6 \
--wrongcolor=$nord0 \
