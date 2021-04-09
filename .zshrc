# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# startx
if [ "$(tty)" = "/dev/tty1" ]
then
    pgrep bspwm || startx
fi

###AUTOSTART###
perl $HOME/fm6000 -o arch --not_de -d bspwm -c cyan

export TERM="xterm-256color"                      
export EDITOR="nvim"
export VISUAL="nvim"
export LANG=en_GB.UTF-8

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
#export MANPAGER="nvim -c 'set ft=man' -"
export MANWIDTH=90

export ZSH="/home/jay/.oh-my-zsh"

plugins=(
        zsh-syntax-highlighting
        zsh-completions
        zsh-autosuggestions
        history-substring-search
        )
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

bindkey -v

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
 else
    for n in "$@"
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.cbt|*.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.cbr|*.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.cbz|*.epub|*.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.cb7|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.pkg|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *.cpio)      cpio -id < ./"$n"  ;;
            *.cba|*.ace)      unace x ./"$n"      ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}

IFS=$SAVEIFS


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
alias poweroff='doas poweroff'
alias reboot='doas reboot'
alias killred='killall redshift'
alias homeserver='ssh pi@192.168.0.39'


eval "$(starship init zsh)"
