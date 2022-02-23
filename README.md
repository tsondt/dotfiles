# My dotfiles

## Requirements
- `bash`
- `git`
- `tmux`
- `vim` (or `neovim`)

## Setup
- Install `git`, `tmux`, `vim` & `neovim`
  ```
  sudo apt update && sudo apt purge -y vim-tiny && sudo apt install -y git tmux vim-nox neovim
  ```

- Install `vim-plug` (https://github.com/junegunn/vim-plug#installation)

  Vim
  ```
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```
  Neovim
  ```
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

- Then run:
  ```
  ./install.sh
  ```

- One-liner on new Ubuntu installation:
  ```
  sudo apt update && sudo apt purge -y vim-tiny && sudo apt install -y git tmux vim-nox neovim software-properties-common && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && ./install.sh
  ```
