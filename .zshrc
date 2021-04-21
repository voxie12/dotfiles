# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ "$(tty)" = "/dev/tty1" ]
then
    pgrep bspwm || startx
fi

# history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# first command when you open up terminal
#neofetch
#fm6000 -o arch --not_de -d bspwm -c cyan
bunnyfetch

# completions
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
kitty + complete setup zsh | source /dev/stdin

# source
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null

# like vim
bindkey -v

# alias
alias sudo="doas --"
alias vim="nvim"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
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

# prompt
eval "$(starship init zsh)"
