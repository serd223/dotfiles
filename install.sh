#!/usr/bin/env bash
cd ~/dotfiles
mkdir -p ./bak/

# bash
mkdir -p ./bak/bash/

cp ~/.bash_aliases ./bak/bash/
cp ./bash/.bash_aliases ~/

cp ~/.bashrc ./bak/bash/
cp ./bash/.bashrc ~/
# /bash

# helix
mkdir -p ~/.config/helix/
mkdir -p ./bak/helix/

cp ~/.config/helix/config.toml ./bak/helix/
cp ./helix/config.toml ~/.config/helix/

cp ~/.config/helix/languages.toml ./bak/helix/
cp ./helix/languages.toml ~/.config/helix/
# /helix

# walked
mkdir -p ~/.config/walked/
mkdir -p ./bak/walked/

cp ~/.config/walked/walked.toml ./bak/walked/
cp ./walked/walked.toml ~/.config/walked/
# /walked

# tmux
mkdir -p ./bak/tmux/

cp ~/.tmux.conf ./bak/tmux/
cp ./tmux/.tmux.conf ~/
# /tmux

# fastfetch
mkdir -p ~/.config/fastfetch/
mkdir -p ./bak/fastfetch/

cp ~/.config/fastfetch/config/jsonc ./bak/fastfetch/
cp ./fastfetch/config.jsonc ~/.config/fastfetch/
# /fastfetch
