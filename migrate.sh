#!/usr/bin/env bash

# -xeo prints all executed commands, exit if any fails, prevent error from being masked
set -x
set -eo pipefail

# Check if brew exists if not install it
if ! [ -x "$(command -v brew)" ]; then
  echo >&2 "Error: brew is not installed."
  echo >&2 "Installing Brew"
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
else
    echo "Brew already installed"
fi

# Check if alacritty exists if not install it
if ! [ -x "$(command -v alacritty)" ]; then
  echo >&2 "Error: alacritty is not installed."
  echo >&2 "Installing alacritty"
  brew install --cask alacritty
else
    echo "Alacritty already installed"
fi

# Check if neovim exists if not install it
if ! [ -x "$(command -v nvim)" ]; then
  echo >&2 "Error: neovim is not installed."
  echo >&2 "Installing neovim"
  brew install neovim 
else
    echo "Neovim already installed"
fi

# Check if skhd exists if not install it
if ! [ -x "$(command -v skhd)" ]; then
  echo >&2 "Error: skhd is not installed."
  echo >&2 "Installing skhd"
  brew install koekeishiya/formulae/skhd 
else
    echo "skhd already installed"
fi

# Check if yabai exists if not install it
if ! [ -x "$(command -v yabai)" ]; then
  echo >&2 "Error: skhd is not installed."
  echo >&2 "Installing skhd"
  brew install koekeishiya/formulae/yabai
else
    echo "yabai already installed"
fi

# Check if tmux exists if not install it
if ! [ -x "$(command -v tmux)" ]; then
  echo >&2 "Error: tmux is not installed."
  echo >&2 "Installing tmux"
  brew install tmux 
else
    echo "tmux already installed"
fi
