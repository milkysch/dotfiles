# Oh haha, fuck you.
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Turn off QT5 HiDPI scaling
export QT_SCALE_FACTOR=1
export QT_AUTO_SCREEN_SCALE_FACTOR=0

# Make QT5 use GTK+ theme, example qBittorrent
export QT_QPA_PLATFORMTHEME=qt5ct

# ACO - apparently faster shader compilation but can be unstable
export RADV_PERFTEST=aco

# DXVK async shader compilation, gets rid of stutters
# but anticheat might not like it
export DXVK_ASYNC=1

# Wine TKG FSYNC
export WINEFSYNC=1

# Disable wine logging by default to speed up games
export WINEDEBUG=-all

# Vsync lmao, miss me with that
export vblank_mode=0

# Reduce audio delay in WINE at cost of CPU power
# Actually processing power cost of this is so big
# it's not worth using this patch outside of rhythm games
# Literally 1 CPU core working full time for pulseaudio only
# because of this thing.
#export STAGING_AUDIO_DURATION=20000

# DXVK keeps on logging so hard it lags my games
export DXVK_LOG_LEVEL=none

# i3 terminal variable
export TERMINAL=kitty

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
alias saturation="/home/renne/scripts/saturation.pl DVI-D-0"
alias fixvideo="xrandr --output DVI-D-0 --mode 1920x1080 --rate 144"
alias theclassic="WINEDEBUG=default LANG=ja_JP.sjis"
alias barrierstart="barriers -f --no-tray --enable-drag-drop --enable-crypto"
alias psvita="mpv /dev/video0 no-cache --untimed --no-demuxer-thread --video-sync=audio --vd-lavc-threads=1"

# saving history to a file
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# autocompletion with arrow-key interface
zstyle ':completion:*' menu select

# sudo autocompletion
zstyle ':completion::complete:*' gain-privileges 1

setopt COMPLETE_ALIASES

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export ZSH="/home/renne/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(   
        git 
        zsh-autosuggestions
        bgnotify
        colored-man-pages
        colorize
        command-not-found
        )

source $ZSH/oh-my-zsh.sh
