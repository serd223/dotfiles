# dotfiles
The configuration files I use across different setups for different applications.

## Installing
The contents of this repository **must** be placed at `~/dotfiles/` for the install scripts to work.

## Backups
The install scripts copy your existing configs to `~/dotfiles/bak/` before changing your configs (`bak` is created if it doesn't exist).

## Portability
Some files (notably [tmux.conf](./tmux/.tmux.conf)) contain some platform-dependent configs but they should auto-detect the platform and do stuff according to that (`.tmux.conf` uses `uname` to detect the platform, for instance).
