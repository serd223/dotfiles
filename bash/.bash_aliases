alias cls="clear"
alias wd="cd \$(walked $HOME/.config/walked/walked.toml)"
alias ls="ls -A -l -h --color=yes"
alias lg="lazygit"

# hack i use because my cursor gets stuck as a block when i exit helix (0 seems to reset to the block instead of my default bar for some reason)
alias hx="hx && printf '\033[5 q'"
alias rc="printf '\033[5 q'"
