HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt PROMPT_SUBST

git_branch() {
  local branch
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
    [[ -n $branch ]] && printf '(%s)' "$branch"
  fi
}

# Prompt colors using zsh's %F{...} (set color) and %f (reset)
# %n = username, %~ = current dir (with ~), $(git_branch) evaluated by PROMPT_SUBST
PROMPT='%F{green}%n %F{magenta}%~ %F{blue}$(git_branch)%f
%F{green}$ %f'

# Custom extra colored `ls`
lsc() {
  local ESC=$'\e'
  local COLOR1="${ESC}[1;31m" # bold red
  local COLOR2="${ESC}[32m"   # green
  local COLOR3="${ESC}[33m"   # yellow
  local COLOR4="${ESC}[34m"   # blue
  local RESET="${ESC}[0m"

  # yeah we parse the entire `ls` output again each time womp womp
  ls "$@" | while read -r line; do
    local perms="${line:0:11}"
    local rest="${line:11}"

    local colored_perms="${perms//x/${COLOR1}x${RESET}}"
    local colored_perms="${colored_perms//w/${COLOR2}w${RESET}}"
    local colored_perms="${colored_perms//r/${COLOR4}r${RESET}}"
    local colored_perms="${colored_perms//s/${COLOR3}s${RESET}}"
    local colored_perms="${colored_perms//S/${COLOR3}S${RESET}}"
    
    print -r -- "${colored_perms}${rest}"
  done
}

# if the overhead becomes a problem for some reason, add toggle for aliasing
if [[ "$ALIAS_LSC" == "yes" ]]; then
  alias ls="lsc"
fi

# Hack because my cursor gets stuck as a block shape after I exit helix
_hx() {
  $(brew --prefix)/bin/hx "$@"
  printf '\033[5 q'
}
autoload -U compinit && compinit
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
rc
