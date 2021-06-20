# first command when you open up terminal
#neofetch
#fm6000 -r -o arch -n -de bspwm -c random
#bunnyfetch
#jfetch
yafetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

autoload -U colors && colors
export PROMPT='%F{yellow}%Bᗧ %F{white}... %F{red}%Bᗣ%b%f  '

# u dont need to type "cd" anymore
setopt auto_cd

# history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# completions
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
_comp_options+=(globdots)

#kitty + complete setup zsh | source /dev/stdin

# source
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
#source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null

# like vim bindkey
KEYTIMEOUT=1
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^E' end-of-line
bindkey '^A' beginning-of-line
bindkey '^R' history-incremental-pattern-search-backward

# source
source ~/git/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

# alias
alias sudo="doas --"
alias vim="nvim"
alias v="nvim"
alias ls='exa --icons --group-directories-first'
alias la='exa -a --icons --group-directories-first'
alias ll='exa -al --icons --group-directories-first'
alias lt='exa -a --icons --tree --group-directories-first'
alias l.='exa -a | egrep "^\."'
alias y='paru -Syu --noconfirm'
alias remove='paru -Rds'
alias cleanup='paru -cc'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cp="cp -i"
alias mv='mv -i'
alias df='df -h'
alias free='free -mt'
alias merge='xrdb -merge ~/.Xresources'
alias jctl="journalctl -p 3 -xb"
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
alias yta='youtube-dl --output "%(title)s.%(ext)s"'
alias yta-mp3='youtube-dl --extract-audio --audio-format mp3 --output "%(title)s.%(ext)s"'
alias ytv-best='youtube-dl -f bestvideo+bestaudio --output "%(title)s.%(ext)s"'
alias tb="nc termbin.com 9999"
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias r='ranger'
alias n='nnn'
alias nf='neofetch'
alias nfoff='neofetch --off'
alias battery='acpi'
alias plaza='mpv https://radio.plaza.one/mp3'
alias lofi='mpv https://youtu.be/5qap5aO4i9A --no-video'
alias poweroff='doas poweroff'
alias reboot='doas reboot'
alias killred='killall redshift'
alias homeserver='ssh pi@192.168.0.39'
alias szsh='source $HOME/.zshrc'
alias du='du -sh'
alias icat="kitty +kitten icat"
alias sx='startx'
alias em="/usr/bin/emacs -nw"
alias emacs="emacsclient -c -a 'emacs'"
alias rain='curl v2d.wttr.in/London'
alias thisatsu='mpv https://www.twitch.tv/thisatsu3'
alias fuckssh='rm -rf ~/.ssh'
alias porn='mpv https://pornhub.com/random'
alias fdisk='sudo fdisk -l'
alias big="expac -H M '%m\t%n' | sort -h | nl"
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"
alias x="xplr"
alias xcd='cd "$(xplr)"'
alias rm='echo "This is not the command you are looking for."; false'

# prompt
#eval "$(starship init zsh)"
