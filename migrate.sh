#!/usr/bin/env bash

# -xeo prints all executed commands, exit if any fails, prevent error from being masked
set -x
set -eo pipefail

# Check if Homebrew is installed
if ! [ -x "$(command -v brew)" ]; then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed"
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

# Check if gh cli exists if not install it
if ! [ -x "$(command -v gh)" ]; then
  echo >&2 "Error: gh cli is not installed."
  echo >&2 "Installing gh cli"
  brew install gh
else
    echo "gh cli already installed"
fi

# Check if starship exists if not install it
if ! [ -x "$(command -v starship)" ]; then
  echo >&2 "Error: starship is not installed."
  echo >&2 "Installing starship"
  brew install starship
else
    echo "gh cli already installed"
fi

// TODO: Figure out how to check if casks installed
# Check if arc browser exists if not install it
if ! [ -x "$(command -v arc)" ]; then
  echo >&2 "Error: starship is not installed."
  echo >&2 "Installing starship"
  brew install --cask arc
else
    echo "arc already installed"
fi

# Check if raycast exists if not install it
if ! [ -x "$(command -v raycast)" ]; then
  echo >&2 "Error: raycast is not installed."
  echo >&2 "Installing raycast"
  brew install --cask raycast
else
    echo "raycast already installed"
fi

# Check if node exists if not install it
if ! [ -x "$(command -v node )" ]; then
  echo >&2 "Error: node is not installed."
  echo >&2 "Installing node"
  brew install node
else
    echo "node already installed"
fi

# Check if go exists if not install it
if ! [ -x "$(command -v go)" ]; then
  echo >&2 "Error: go is not installed."
  echo >&2 "Installing go "
  brew install go
else
    echo "go already installed"
fi

# Check if lazygit exists if not install it
if ! [ -x "$(command -v lazygit)" ]; then
  echo >&2 "Error: lazygit is not installed."
  echo >&2 "Installing lazygit"
  brew install lazygit
else
    echo "lazygit already installed"
fi

# Check if zsh-syntax-highlighting exists if not install it
if ! [ -x "$(command -v lazygit)" ]; then
  echo >&2 "Error: zsh-syntax-highlighting is not installed."
  echo >&2 "Installing zsh-syntax-highlighting"
  brew install zsh-syntax-highlighting
else
    echo "zsh-syntax-highlighting already installed"
fi

# Check if neofetch exists if not install it
if ! [ -x "$(command -v neofetch)" ]; then
  echo >&2 "Error: neofetch is not installed."
  echo >&2 "Installing neofetch"
  brew install neofetch
else
    echo "neofetch already installed"
fi

# check if font exists if not install it
echo "installing geist mono nerd font"
brew tap homebrew/cask-fonts
brew install geist-mono-nerd-font

# copy zshrc into root directory
echo "copying zshrc into root directory"
cp .zshrc ~

# remove last login message from terminal
echo "creating .hushlogin"
touch .hushlogin
mv .hushlogin ~

# TODO: Add ZSH plugins
