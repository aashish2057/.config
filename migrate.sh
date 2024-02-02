#!/usr/bin/env bash

# -xeo prints all executed commands, exit if any fails, prevent error from being masked
set -x
set -eo pipefail

xcode-select --install

# Check if Homebrew is installed
if ! [ -x "$(command -v brew)" ]; then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed"
fi

# Install brew formula and casks
brew bundle

# copy zshrc into root directory
echo "copying zshrc into root directory"
cp .zshrc ~

# remove last login message from terminal
echo "creating .hushlogin"
touch .hushlogin
mv .hushlogin ~

# install rust
echo "installing rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
