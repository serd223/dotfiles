alias cls="clear"
alias wd="cd \$(walked $HOME/.config/walked/walked.toml)"
alias ls="ls -A -l -h --color=yes"
alias lg="lazygit"

# Hack because my cursor gets stuck as a block shape after I exit helix
# The function `_hx` is defined inside `.bashrc`
alias hx="_hx"
alias rc="printf '\033[5 q'"
