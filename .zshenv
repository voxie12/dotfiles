typeset -U PATH path

export WM="bspwm"
export EDITOR="nvim"
export READER="zathura"
export VISUAL="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANWIDTH=90

path=("$HOME/.local/bin" "$HOME/.cargo/bin" "$HOME/go/bin" "$path[@]")
export PATH
