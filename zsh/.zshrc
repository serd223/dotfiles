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

# Hack because my cursor gets stuck as a block shape after I exit helix
_hx() {
  /opt/homebrew/bin/hx "$@"
  printf '\033[5 q'
}
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
rc
