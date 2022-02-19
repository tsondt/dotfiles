# My dotfiles

## Requirements
- `bash`
- `git`
- `tmux`
- `vim` (or `neovim`)

## Setup
- Install `bash`, `tmux`, `vim` & `neovim`
  ```
  brew install bash tmux vim neovim
  ```

- Switch to Bash as the default shell
  ```
  echo "/usr/local/bin/bash" | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/bash
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
