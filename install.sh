#!/bin/bash
cp ./bash/.bash_aliases ~/
cp ./bash/.bashrc ~/
. ~/.bashrc
. ~/.bash_aliases

mkdir -p ~/.config/helix/
cp ./helix/config.toml ~/.config/helix/
cp ./helix/languages.toml ~/.config/helix/

mkdir -p ~/.config/walked/
cp ./walked/walked_conf.toml ~/.config/walked/

cp ./tmux/.tmux.conf ~/
