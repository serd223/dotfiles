#!/usr/bin/env zsh

tmux_current_path=$(tmux display-message -p '#{pane_current_path}')

case "$1" in
    # NOTE: must not forget to add available commands to this space-seperated list
    --commands)
        printf "scratch reload claude git py haskell jupyter"
        ;;
    scratch)
        tmux display-popup -E -w 90% -h 90% \
            'touch /tmp/scratch.harper && hx /tmp/scratch.harper && rm /tmp/scratch.harper'
        ;;
    reload)
        tmux source-file ~/.tmux.conf
        ;;
    claude)
        tmux display-popup -E -w 100% -h 100% -d "$tmux_current_path" \
            "tmux new-session -A -s claude -c \"$tmux_current_path\" claude"
        ;;
    git)
        tmux display-popup -E -w 100% -h 100% -d "$tmux_current_path" \
            "lazygit"
        ;;
    py)
        tmux display-popup -E -w 90% -h 90% -d "$tmux_current_path" \
            "tmux new-session -A -s python-prompt -c \"$tmux_current_path\" uv run --with numpy --with scipy --with matplotlib python3"
        ;;
    jupyter)
        tmux display-popup -E -w 90% -h 90% -d "$tmux_current_path" \
            "tmux new-session -A -s jupyter -c \"$tmux_current_path\" uv run --with scipy --with numpy --with matplotlib --with jupyter jupyter notebook"
        ;;
    haskell)
        tmux display-popup -E -w 90% -h 90% -d "$tmux_current_path" \
            "tmux new-session -A -s haskell-prompt -c \"$tmux_current_path\" ghci"
        ;;
    *)
        echo "Unknown command: $1"
        exit 1
        ;;
esac
