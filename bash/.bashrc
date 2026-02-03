# export PATH="$PATH:/opt/fasm/"
export PATH="$HOME/.ghcup/bin/:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export EDITOR="hx"
export GPG_TTY=$(tty)
export COLORTERM="truecolor"

[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

function git_branch() {
    if [ -d .git ] ; then
        printf "%s" "($(git branch 2> /dev/null | awk '/\*/{print $2}'))";
    fi
}

blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset
PS1=${grn}'\u '${pur}'\w '${blu}'$(git_branch)'${grn}'\n\$ '${clr}

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

section() {
  apropos -s $1 -w '*' | less
}

# Hack because my cursor gets stuck as a block shape after I exit helix
_hx() {
  /usr/bin/hx "$@"
  printf '\033[5 q'
}

if [ -f /etc/profile.d/bash_completion.sh ]; then
    . /etc/profile.d/bash_completion.sh
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -f ~/.cargo/env ]; then
    . "$HOME/.cargo/env"
fi

# For WSL2: Sets DISPLAY tp host IP
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
export LIBGL_ALWAYS_INDIRECT=1

rc
