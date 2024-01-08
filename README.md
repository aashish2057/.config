My configuration for M2 Macbook Pro

### dotfiles

- alacritty
- neovim
- tmux
- yabai
- skhd

### brew packages

- nvim
- skdh
- yabai
- tmux
- gh
- starship
- node
- go
- lazygit
- neofetch
- zsh-synxtax-highlighting

### brew casks

- arc
- alacritty
- raycast

### New mac setup guide

#### Prerequisites

- Xcode cli tools
  run `xcode-select --install` in terminal to install

#### Instructions

- clone repo in root `~` directory
  `git clone https://github.com/aashish2057/.config.git`
- change into directory and run migrate.sh
  `cd .config` and `./migrate.sh`
- the script will go through and install homebrew, and all packages and casks,
  copy the correct zshrc configuration into `~` directory
