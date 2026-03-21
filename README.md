# Dotfiles

This repo manages terminal/editor configuration with [GNU Stow](https://www.gnu.org/software/stow/).

## Packages in this repo

- `nvim` -> `~/.config/nvim`
- `opencode` -> `~/.config/opencode`
- `starship` -> `~/.config/starship.toml`
- `tmux` -> `~/.tmux.conf`
- `zsh` -> `~/.zshrc`

## Stow a single app

From the repo root, run:

```bash
stow <appname>
```

Examples:

```bash
stow nvim
stow tmux
stow zsh
```

That creates symlinks from this repo into your home directory so each app uses the tracked config.

## Stow everything at once

Use the helper script:

```bash
bash stow-all.sh
```

Or make it executable and run directly:

```bash
chmod +x stow-all.sh
./stow-all.sh
```
