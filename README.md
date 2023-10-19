# My dotfiles

## Requirements
- `alacritty`
- `bash`
- `git`
- `tmux`
- `vim`
- `neovim`

## Setup
- Install [alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md) (Ubuntu)
  - Install dependencies
  ```
  sudo apt update && sudo apt install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
  ```
  - Install [rustup](https://rustup.rs/)
  ```
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  ```
  - Build and install `alacritty`
  ```
  git clone https://github.com/alacritty/alacritty.git
  cd alacritty
  rustup override set stable
  rustup update stable
  cargo build --release
  sudo cp target/release/alacritty /usr/local/bin
  ```

- Install `Hack` font
  ```
  mkdir -p "$HOME/.fonts"
  cd "$HOME/.fonts"
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
  unzip Hack.zip
  rm *.md
  fc-cache -f "$HOME/.fonts"
  ```

- Install `git`, `tmux`, `vim`
  ```
  sudo apt update && sudo apt purge -y vim-tiny && sudo apt install -y git tmux vim-nox
  ```

- Install `neovim` (Ubuntu)
  ```
  sudo snap install --classic neovim
  ```

- Install `vim-plug` (https://github.com/junegunn/vim-plug#installation)

  Vim
  ```
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

- Then run:
  ```
  ./install.sh
  ```

- One-liner on new Ubuntu installation:
  ```
  sudo apt update && sudo apt purge -y vim-tiny && sudo apt install -y git tmux vim-nox software-properties-common && sudo snap install --classic neovim && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && ./install.sh
  ```
