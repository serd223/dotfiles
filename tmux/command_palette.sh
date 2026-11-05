#!/usr/bin/env zsh

tmux_current_path=$(tmux display-message -p '#{pane_current_path}')

# NOTE: TODO: Must not forget to also add commands to palette list in .tmux.conf !
case "$1" in
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
    *)
        echo "Unknown command: $1"
        exit 1
        ;;
esac
