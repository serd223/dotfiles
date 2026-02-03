# Path stuff
. "$HOME/.cargo/env"
export PATH="$HOME/bin/:$PATH"
export PATH="/usr/local/go/bin/:$PATH"
export GOPATH="$HOME/go/"
export PATH="$GOPATH/bin/:$PATH"
export LC_RPATH="/usr/local/lib/"

# Editor
export EDITOR="hx"

# Make sure TERM supports colors
export TERM=${TERM:-xterm-256color}

# Configure zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8,bold"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HISTORY_IGNORE="git clone *"
ZSH_AUTOSUGGEST_COMPLETION_IGNORE="git clone *"

# Aliases
alias hx="_hx" # defined in .zshrc
alias lg='lazygit'
alias cls="clear"
alias ls="ls -A -l -h --color=yes"
alias wd="cd \$(walked $HOME/.config/walked/walked.toml)"
alias rc="printf '\033[5 q'"
