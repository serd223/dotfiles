#!/bin/bash
cp ./bash/.bash_aliases ~/
cp ./bash/.bashrc ~/

mkdir -p ~/.config/helix/
cp ./helix/config.toml ~/.config/helix/
cp ./helix/languages.toml ~/.config/helix/

mkdir -p ~/.config/walked/
cp ./walked/walked_conf.toml ~/.config/walked/

cp ./tmux/.tmux.conf ~/

mkdir -p ~/.config/fastfetch/
cp ./fastfetch/config.jsonc ~/.config/fastfetch/

echo "To apply changes, run:"
echo "    source ~/.bashrc"
echo "    tmux source-file ~/.tmux.conf (if inside tmux session)"
