#!/usr/bin/env zsh
cd ~/dotfiles
mkdir -p ./bak/

# zsh
mkdir -p ./bak/zsh/

cp ~/.zshenv ./bak/zsh/
cp ./zsh/linux/.zshenv ~/

cp ~/.zshrc ./bak/zsh/
cp ./zsh/linux/.zshrc ~/
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

echo "shell /usr/bin/zsh" > ./kitty/kitty.conf.gen
cat ./kitty/kitty.conf >> ./kitty/kitty.conf.gen
cp ~/.config/kitty/kitty.conf ./bak/kitty/
cp ./kitty/kitty.conf.gen ~/.config/kitty/kitty.conf
# /kitty

# tmux
mkdir -p ./bak/tmux/

cp ~/.tmux.conf ./bak/tmux/
cp ./tmux/.tmux.conf ~/
# /tmux

# fastfetch
mkdir -p ~/.config/fastfetch/
mkdir -p ./bak/fastfetch/

cp ~/.config/fastfetch/config.jsonc ./bak/fastfetch/
cp ./fastfetch/config.jsonc ~/.config/fastfetch/
# /fastfetch
