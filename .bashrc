#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Make QT5 use GTK+ theme, example qBittorrent
export QT_QPA_PLATFORMTHEME=qt5ct

# ACO - apparently faster shader compilation but can be unstable
export RADV_PERFTEST=aco

# Wine TKG FSYNC
export WINEFSYNC=1

# Disable wine logging by default to speed up games
export WINEDEBUG=-all

# Reduce audio delay in WINE at cost of CPU power
# Actually processing power cost of this is so big
# it's not worth using this patch outside of rhythm games
# Literally 1 CPU core working full time for pulseaudio only
# because of this thing.
#export STAGING_AUDIO_DURATION=20000

# DXVK keeps on logging so hard it lags my games
export DXVK_LOG_LEVEL=none

# i3 terminal variable
export TERMINAL=alacritty

# IBus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
#export GTK_IM_MODULE=xim
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=xim
#export GTK_IM_MODULE_FILE=/usr/lib/gtk-3.0/3.0.0/immodules.cache

# vitasdk
export VITASDK=/usr/local/vitasdk
export PATH=$VITASDK/bin:$PATH # add vitasdk tool to $PATH

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lhA'
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -pv"
alias wget="wget -c"
alias histg="history | grep"
alias myip="curl http://ipecho.net/plain; echo"
alias pacman="sudo pacman"
alias mount="sudo mount"
alias gamma="xrandr --output DVI-D-0 --gamma"
alias saturation="/home/milky/scripts/saturation.pl DVI-D-0"
alias fixvideo="xrandr --output DVI-D-0 --mode 1920x1080 --rate 144"
alias theclassic="WINEDEBUG=default LANG=ja_JP.sjis"

export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
