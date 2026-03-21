#!/usr/bin/env bash

set -euo pipefail

if ! command -v stow >/dev/null 2>&1; then
  echo "Error: GNU Stow is not installed."
  echo "Install it first (for example: brew install stow) and run again."
  exit 1
fi

packages=(
  nvim
  opencode
  starship
  tmux
  zsh
)

for pkg in "${packages[@]}"; do
  echo "Stowing $pkg..."
  stow "$pkg"
done

echo "Done. All dotfiles have been stowed."
