# ~/.bashrc

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/sharehhdoc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias r='ranger'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  #tmux attach -t default || tmux new -s default
  tmux
fi

# my aliases

#cmake
# export CMAKE_PREFIX_PATH=/home/ramona/programs/Qt/5.12.7/gcc_64/lib/cmake/:/home/ramona/Documents/FZI/octomap/risk_octomap/lib/cmake:$CMAKE_PREFIX_PATH 
export CMAKE_PREFIX_PATH=/home/ramona/programs/Qt/5.12.7/gcc_64/lib/cmake/:$CMAKE_PREFIX_PATH 

#export PATH=/home/ramona/programs/thunderbird/:$PATH 
#export PATH=/home/ramona/programs/android-studio/bin/:$PATH

#powerline
#export TERM="xterm-256color"

source /home/ramona/kitcar/kitcar-init/config/bashrc_private

#export PAGER=most #problem with bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM="verbose"
source ~/.scripts/git-prompt.sh

PS1='\e[1;34m\u@\h:\e[1;36m\w\e[m\e[35m$(__git_ps1 " [%s]") \e[30;1m\$ \n\e[1;36m> \e[m'
#PS1='${debian_chroot:+($debian_chroot)}\e[1;34m\u@\h:\e[1;36m\w\e[m\e[35m$(__git_ps1 " [%s]") \e[30;1m\$ \n\e[1;36m> \e[m'
#PS1='${debian_chroot:+($debian_chroot)}\[$(tput bold)\]\e[32;1m\u@\h:\[$(tput bold)\]\e[34;1m\w\e[33;1m$(__git_ps1 " [%s]") \e[30;1m\$ \n\[$(tput bold)\]\e[31;1m> \e[0m'

#PS1='\e]4;1;#RRGGBB\a[\u@\h \W$(__git_ps1 " (%s)")]\$ '

#PS1='\e[32;1m\u@\h: \e[31m\W\e[0m\$ '

#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#PS1='${debian_chroot:+($debian_chroot)}\[$(tput bold)\]\[\033[38;5;78m\]\u@\h\[\033[00m\]:\[$(tput bold)\]\[\033[38;5;75m\]\w\[\033[00m\]\[\033[0;32m\]$(__git_ps1 " (%s)") \[\033[1;30m\]$\[\033[00m\] \n\[$(tput bold)\]\[\033[38;5;78m\]> \[$(tput sgr0)\]'


#PS1='${debian_chroot:+($debian_chroot)}\[\033[38;5;78m\]\u@\h\[\033[00m\]:\[\033[38;5;75m\]\w\[\033[00m\]\[\033[0;32m\]$(__git_ps1 " (%s)") \[\033[1;30m\]$\[\033[00m\] \n\[$(tput bold)\]\[\033[38;5;78m\]> \[$(tput sgr0)\]'

#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /home/ramona/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

#source /home/ramona/kitcar/kitcar-gazebo-simulation/init/bashrc # for kitcar-gazebo-simulation repository

# swap caps lock and escape
#xmodmap -e "clear lock"
#xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
#xmodmap -e "keycode 66 = Escape NoSymbol Escape"


#export PS1="${debian_chroot:+($debian_chroot)}\[$(tput bold)\]\[\033[38;5;78m\]\u@\h\[\033[00m\]:\[$(tput bold)\]\[\033[38;5;75m\]\w\[\033[00m\]\[\033[0;32m\]$($GIT_RADAR) \[\033[1;30m\]$\[\033[00m\]\n\[$(tput bold)\]\[\033[38;5;78m\]> \[$(tput sgr0)\]"
#export PS1="${debian_chroot:+($debian_chroot)}\[$(tput bold)\]\[\033[38;5;78m\]\u@\h\[\033[00m\]:\[$(tput bold)\]\[\033[38;5;75m\]\w\[\033[00m\]\[\033[0;32m\]$($GIT_RADAR) \[\033[1;30m\]$\[\033[00m\]\n>"



export PATH="$PATH:/home/ramona/programs/microchip/xc8/v2.10/bin"
# robot_folders setup
export ROB_FOLDERS_IGNORE_CMAKE_PREFIX_PATH=":-)"
source /home/ramona/Documents/FZI/robot_folders/bin/fzirob_source.sh

# test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!

#__conda_setup="$('/home/ramona/programs/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
 #   if [ -f "/home/ramona/programs/anaconda3/etc/profile.d/conda.sh" ]; then
  #      . "/home/ramona/programs/anaconda3/etc/profile.d/conda.sh"
  #  else
   #     export PATH="/home/ramona/programs/anaconda3/bin:$PATH"
  #  fi
#fi
#unset __conda_setup
#onda config --set changeps1 False

# <<< conda initialize <<<


#====FZF==============
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
#--color fg:#D8DEE9
#--color bg:#2E3440
#--color hl:#A3BE8C
#--color fg+:#D8DEE9
#--color bg+:#434C5E
#--color hl+:#A3BE8C
#--color pointer:#BF616A
#--color info:#4C566A
#--color spinner:#4C566A
#--color header:#4C566A
#--color prompt:#81A1C1
#--color marker:#EBCB8B
#--color gutter:#2E3440
#--color border:#4C566A
#'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
--color=fg:#eceff4,bg:#3B4252,gutter:#3B4252,hl:#a3be8c 
--color=fg+:#8FBCBB,bg+:#434C5E,hl+:#bf616a 
--color=info:#ebcb8b,prompt:#5e81ac,pointer:#bf616a 
--color=marker:#b48ead,spinner:#ebcb8b,header:#5e81ac
--layout=reverse'
#export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"--ansi --preview-window 'right:60%' --preview 'bat --color=always --theme=Nord --style=header,grid --line-range :300 {}'"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS" --ansi --preview-window 'right:60%' --preview 'bat --color=always --theme=Nord --style=header --line-range :300 {}'"

export EDITOR=nvim

