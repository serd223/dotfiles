#!/usr/bin/env zsh
cd ~/dotfiles/
mkdir -p ./bak/

# zsh
mkdir -p ./bak/zsh/

cp ~/.zshenv ./bak/zsh/
cp ./zsh/.zshenv ~/

cp ~/.zshrc ./bak/zsh/
cp ./zsh/.zshrc ~/
# /zsh

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

# kitty
mkdir -p ~/.config/kitty/
mkdir -p ./bak/kitty/

cp ~/.config/kitty/kitty.conf ./bak/kitty/
cp ./kitty/kitty.conf ~/.config/kitty/
# /kitty

# tmux
mkdir -p ./bak/tmux/

cp ~/.tmux.conf ./bak/tmux/
cp ./tmux/.tmux.conf ~/
# /tmux
