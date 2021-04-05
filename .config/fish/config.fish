#! /bin/bash

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

# first run when u open terminal
#colorscript -e 31
#neofetch
bash $HOME/scripts/ascii.sh --cat

### EXPORT ###
#set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths
set fish_greeting                                 # Supresses fish's intro message
#set TERM "xterm-256color"                         # Sets the terminal type
set EDITOR "nvim"               
set VISUAL "nvim"        
#set -U SXHKD_SHELL /usr/bin/bash

# alias
alias y='paru -Syu --noconfirm'
alias remove='paru -Rds'
alias autoremove='paru -c'
alias clean='paru -Scc'
alias v='nvim'
alias vim='nvim'
alias ls='exa -al --color=always --group-directories-first'
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'
alias x='startx'
alias df='df -h'
alias free='free -mt'
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias nf='neofetch'
alias nfoff='neofetch --off'
alias battery='acpi'
alias fdisk='sudo fdisk -l'
alias plaza='mpv https://radio.plaza.one/mp3'
alias youtube-best='youtube-dl -f bestvideo+bestaudio '
alias youtube-mp3='youtube-dl --extract-audio --audio-format mp3 '
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
alias r='ranger'
alias n='nnn'
alias killred='killall redshift'
alias homeserver='ssh pi@192.168.0.39'
alias ssdideapad='ssh jay@192.168.0.38'
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"
alias sudo='doas'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias jctl="journalctl -p 3 -xb"
alias tb="nc termbin.com 9999"
alias sourcefish="source $HOME/.config/fish/config.fish"
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"
alias mirrorx='sudo reflector --age 6 --latest 20 --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'


#man with bat
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"
alias big="expac -H M '%m\t%n' | sort -h | nl"

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion grey
set fish_color_command green
set fish_color_error red
set fish_color_param brcyan
set fish_color_search_match --background="#686868" 

# prompt
starship init fish | source
