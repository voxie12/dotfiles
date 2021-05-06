# first command when you open up terminal
#neofetch
#fm6000 -o arch --not_de -d bspwm -c cyan
bunnyfetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

autoload -U colors && colors
export PROMPT='%F{red}%B*%b%f '

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

kitty + complete setup zsh | source /dev/stdin

# u dont need to type 'cd' anymore

# source
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
#source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null

# like vim
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
alias rm='rm -i'
alias df='df -h'                          # human-readable sizes
alias free='free -mt'                      # show sizes in MB
alias merge='xrdb -merge ~/.Xresources'   # merge xresources
alias jctl="journalctl -p 3 -xb"          # get error messages from journalctl
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "
alias config="/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME"
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
alias p='paru'
alias x='startx'
alias em="/usr/bin/emacs -nw"
alias emacs="emacsclient -c -a 'emacs'"
alias rain='curl v2d.wttr.in/London'
alias thisatsu='mpv https://www.twitch.tv/thisatsu3'
alias fuckssh='rm -rf ~/.ssh'

# prompt
#eval "$(starship init zsh)"
