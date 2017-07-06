# My dotfiles

## Requirements
- `bash`
- `git`
- `tmux`
- `vim` (or `neovim`)

## Setup
- Install `git`, `tmux`, `vim` (Ubuntu)
  ```
  sudo apt update && sudo apt purge -y vim-tiny && sudo apt install -y git tmux vim-nox
  ```
- Install `neovim` (Ubuntu) (https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu)
  ```
  sudo add-apt-repository ppa:neovim-ppa/stable
  sudo apt update && sudo apt install -y neovim
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

- One-liner on new Lubuntu installation:
  ```
  sudo apt update && sudo apt purge -y vim-tiny && sudo apt install -y git tmux vim-nox software-properties-common && sudo add-apt-repository ppa:neovim-ppa/stable && sudo apt update && sudo apt install -y neovim && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && ./install.sh
  ```
