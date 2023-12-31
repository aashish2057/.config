#!/usr/bin/env bash

# -xeo prints all executed commands, exit if any fails, prevent error from being masked
set -x
set -eo pipefail

echo "Uninstalling all brew packages"
brew remove --force $(brew list --formula)

echo "Uninstalling all brew packages"
brew remove cask --force $(brew list)

echo "Uninstalling homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
