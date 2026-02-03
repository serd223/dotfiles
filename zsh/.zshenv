# Path stuff
. "$HOME/.cargo/env"
export PATH="$HOME/bin/:$PATH"
export PATH="/usr/local/go/bin/:$PATH"
export GOPATH="$HOME/go/"
export PATH="$GOPATH/bin/:$PATH"
export LC_RPATH="/usr/local/lib/"

# Editor
export EDITOR="hx"
export KEYTIMEOUT=10

# Make sure TERM supports colors
export TERM=${TERM:-xterm-256color}

# Aliases
alias lg='lazygit'
alias cls="clear"
alias ls="ls -Alh --color=yes"
alias wd="cd \$(walked $HOME/.config/walked/walked.toml)"
alias rc="printf '\033[5 q'"
