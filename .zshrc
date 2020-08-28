# Editor settings
# ewrap opens nvim in a split window when tmux is running
#export VISUAL=ewrap
export EDITOR=nvim

# pip stores binaries here
export PATH=$PATH:/home/milky/.local/bin

# I am not really a fan of telemetry.
# I rather optout and report bugs myself.
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Turn off QT5 HiDPI scaling
export QT_SCALE_FACTOR=1
export QT_AUTO_SCREEN_SCALE_FACTOR=0

# Make QT5 use GTK+ theme, example qBittorrent
export QT_QPA_PLATFORMTHEME=qt5ct

# PBA disable, I've got no idea what this does but people say
# that it improves DXVK performance in games like League of Legends
export PBA_DISABLE=1

# OpenGL multithreading for AMD
export mesa_glthread=true

# ACO - apparently faster shader compilation but can be unstable
export RADV_PERFTEST=aco

# DXVK async shader compilation, gets rid of stutters
# but anticheat might not like it
export DXVK_ASYNC=1

# Wine TKG FSYNC
export WINEFSYNC=1

# Disable logging for game related stuff to get better performance
export WINEDEBUG=-all
export DXVK_LOG_LEVEL=none
export VKD3D_DEBUG=none
export VKD3D_SHADER_DEBUG=none

# Vsync
export vblank_mode=0

# wine-osu specific settings
export STAGING_AUDIO_DURATION=8000
export STAGING_AUDIO_PERIOD=2500

# i3 terminal variable
# kitty's lack of bitmap font support outweights all of rxvt-unicode problems
export TERMINAL=urxvt
#export TERMINAL=kitty

# IBus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
#export GTK_IM_MODULE=xim
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=xim
#export GTK_IM_MODULE_FILE=/usr/lib/gtk-3.0/3.0.0/immodules.cache

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
alias saturation="~/scripts/saturation.pl DVI-D-0"
alias fixvideo="xrandr --output DVI-D-0 --mode 1920x1080 --rate 144"
alias winedebug="WINEDEBUG=default LANG=ja_JP.sjis"
#alias barrierstart="barriers -f --no-tray --enable-drag-drop --enable-crypto"
alias psvita="mpv /dev/video0 --no-cache --untimed --no-demuxer-thread --video-sync=audio --vd-lavc-threads=1"
alias osu="WINEPREFIX=~/.wine-osu WINEARCH=win32 /opt/wine-osu/bin/wine ~/.wine-osu/drive_c/Program\ Files/osu\!/osu\!.exe"
alias clearcache="sudo bash -c 'sync; echo 3 > /proc/sys/vm/drop_caches'"
alias mpv="vblank_mode=1 mpv"
alias nnn="nnn -e -x"
alias vim="nvim" # xD

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

export ZSH="/home/milky/.oh-my-zsh"

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
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
