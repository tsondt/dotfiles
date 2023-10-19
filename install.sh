#!/usr/bin/env bash

if [ $1 = "local" ]; then
  [[ -L "$HOME/.config/alacritty/alacritty.toml" ]] && rm "$HOME/.config/alacritty/alacritty.toml"
  [[ -f "$HOME/.config/alacritty/alacritty.toml" ]] && mv "$HOME/.config/alacritty/alacritty.toml"{,.bak}
  [[ -d "$HOME/.config/alacritty" ]] || mkdir -p "$HOME/.config/alacritty"
  ln -s "$PWD/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"
  git clone "https://github.com/alacritty/alacritty-theme" "$HOME/.config/alacritty/themes"
fi

[[ -L "$HOME/.vimrc" ]] && rm "$HOME/.vimrc"
[[ -f "$HOME/.vimrc" ]] && mv "$HOME/.vimrc{,.bak}"
ln -s "$PWD/.vimrc" "$HOME/.vimrc"
vim +PlugInstall +PlugUpdate +qall

# [[ -L "$HOME/.config/nvim/init.vim" ]] && rm "$HOME/.config/nvim/init.vim"
# [[ -f "$HOME/.config/nvim/init.vim" ]] && mv "$HOME/.config/nvim/init.vim{,.bak}"
# [[ -d "$HOME/.config/nvim" ]] || mkdir -p "$HOME/.config/nvim"
# ln -s "$PWD/init.vim" "$HOME/.config/nvim/init.vim"
# nvim +PlugInstall +PlugUpdate +qall

[[ -L "$HOME/.config/nvim" ]] && rm "$HOME/.config/nvim"
[[ -d "$HOME/.config/nvim" ]] && mv "$HOME/.config/nvim"{,.bak}
git clone "https://github.com/LazyVim/starter" "$HOME/.config/nvim"
ln -s "$PWD/nvim/lua/plugins/theme.lua" "$HOME/.config/nvim/lua/plugins/theme.lua"
ln -s "$PWD/nvim/lua/plugins/colorizer.lua" "$HOME/.config/nvim/lua/plugins/colorizer.lua"

[[ -L "$HOME/.tmux.conf" ]] && rm "$HOME/.tmux.conf"
[[ -f "$HOME/.tmux.conf" ]] && mv "$HOME/.tmux.conf"{,.bak}
ln -s "$PWD/.tmux.conf" "$HOME/.tmux.conf"

[[ -L ""$HOME/.tmux-default-session"" ]] && rm "$HOME/.tmux-default-session"
[[ -f "$HOME/.tmux-default-session" ]] && mv "$HOME/.tmux-default-session"{,.bak}
ln -s "$PWD/.tmux-default-session" "$HOME/.tmux-default-session"

[[ -L "$HOME/.tmuxline.conf" ]] && rm "$HOME/.tmuxline.conf"
[[ -f "$HOME/.tmuxline.conf" ]] && mv "$HOME/.tmuxline.conf"{,.bak}
ln -s "$PWD/.tmuxline.conf" "$HOME/.tmuxline.conf"

[[ -L "$HOME/.Xresources" ]] && rm "$HOME/.Xresources"
[[ -f "$HOME/.Xresources" ]] && mv "$HOME/.Xresources"{,.bak}
ln -s "$PWD/.Xresources" "$HOME/.Xresources"

[[ -L "$HOME/.dircolors" ]] && rm "$HOME/.dircolors"
[[ -f "$HOME/.dircolors" ]] && mv "$HOME/.dircolors"{,.bak}
ln -s "$PWD/.dircolors" "$HOME/.dircolors"

[[ -L "$HOME/.bash_aliases" ]] && rm "$HOME/.bash_aliases"
[[ -f "$HOME/.bash_aliases" ]] && mv "$HOME/.bash_aliases"{,.bak}
ln -s "$PWD/.bash_aliases" "$HOME/.bash_aliases"

[[ -s "$HOME/.bashrc" ]] && sed -i.bak-term '/export TERM=/d' "$HOME/.bashrc" && rm "$HOME/.bashrc.bak-term"
echo 'export TERM="xterm-256color"' >>"$HOME/.bashrc"

[[ -L "$HOME/.promptline.conf" ]] && rm "$HOME/.promptline.conf"
[[ -f "$HOME/.promptline.conf" ]] && mv "$HOME/.promptline.conf"{,.bak}
ln -s "$PWD/.promptline.conf" "$HOME/.promptline.conf"
[[ -s "$HOME/.bashrc" ]] && sed -i.bak-promptline '/promptline\.conf/d' "$HOME/.bashrc" && rm "$HOME/.bashrc.bak-promptline"
echo '. ~/.promptline.conf' >>"$HOME/.bashrc"

[[ -L "$HOME/base16-paraiso.dark.sh" ]] && rm "$HOME/base16-paraiso.dark.sh"
[[ -f "$HOME/base16-paraiso.dark.sh" ]] && mv "$HOME/base16-paraiso.dark.sh"{,.bak}
ln -s "$PWD/base16-paraiso.dark.sh" "$HOME/base16-paraiso.dark.sh"
[[ -s "$HOME/.bashrc" ]] && sed -i.bak-base16 '/base16-paraiso\.dark\.sh/d' "$HOME/.bashrc" && rm "$HOME/.bashrc.bak-base16"
echo '. ~/base16-paraiso.dark.sh' >>"$HOME/.bashrc"
