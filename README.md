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
- geist mono nerd font

### New mac setup guide

#### Prerequisites

- Xcode cli tools\
  run `xcode-select --install` in terminal to install

#### Instructions

- clone repo in root `~` directory\
  `git clone https://github.com/aashish2057/.config.git`
- change into directory and run migrate.sh
  `cd .config` and `./migrate.sh`
- the script will go through and install homebrew, and all packages and casks,
  copy the correct zshrc configuration into `~` directory

#### Application specific instructions

- tmux\
  clone TPM `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`\
  launch tmux and install plugins with `prefix + I`

- arc\
  configure shortcuts\
  archieve tab - `ctrl - w`\
  find - `ctrl - f`\
  go back - `ctrl + shift - left`\
  go forward - `ctrl + shift - right`\
  new tab - `ctrl - t`\
  new window - `ctrl - n`\
  next space - `ctrl + alt - right`\
  prev space - `ctrl + alt - left`\
  next tab - `ctrl + alt - up`\
  next tab - `ctrl + alt - down`\
  open command bar - `ctrl + shift - l`\
  refresh the page - `ctrl + r`\
  restore last closed tab - `ctrl + shift - t`
