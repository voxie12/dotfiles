typeset -U PATH path

export EDITOR="nvim"
export VISUAL="nvim"
export TERM="xterm-256color"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANWIDTH=90

path=("$HOME/.local/bin" "$HOME/.cargo/bin" "$HOME/go/bin" "$path[@]")
export PATH
