#!/usr/bin/env bash
[[ -L $HOME/.vimrc ]] && rm $HOME/.vimrc
[[ -f $HOME/.vimrc ]] && mv $HOME/.vimrc $HOME/.vimrc.bak
ln -s $PWD/.vimrc $HOME/.vimrc
vim +PluginInstall +qall
[[ -L $HOME/.tmux.conf ]] && rm $HOME/.tmux.conf
[[ -f $HOME/.tmux.conf ]] && mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
ln -s $PWD/.tmux.conf $HOME/.tmux.conf
[[ -L $HOME/.tmuxline.conf ]] && rm $HOME/.tmuxline.conf
[[ -f $HOME/.tmuxline.conf ]] && mv $HOME/.tmuxline.conf $HOME/.tmuxline.conf.bak
ln -s $PWD/.tmuxline.conf $HOME/.tmuxline.conf
[[ -L $HOME/.promptline.conf ]] && rm $HOME/.promptline.conf
[[ -f $HOME/.promptline.conf ]] && mv $HOME/.promptline.conf $HOME/.promptline.conf.bak
ln -s $PWD/.promptline.conf $HOME/.promptline.conf
[[ -s "$HOME/.bashrc" ]] && sed -i.bak-promptline '/promptline\.conf/d' $HOME/.bashrc
echo '. ~/.promptline.conf' >> $HOME/.bashrc
[[ -s "$HOME/.bashrc" ]] && sed -i.bak-term '/export TERM=/d' $HOME/.bashrc
echo 'export TERM="xterm-256color"' >> $HOME/.bashrc
[[ -L "$HOME/base16-paraiso.dark.sh" ]] && rm $HOME/base16-paraiso.dark.sh
[[ -f "$HOME/base16-paraiso.dark.sh" ]] && mv $HOME/base16-paraiso.dark.sh $HOME/base16-paraiso.dark.sh.bak
ln -s $PWD/base16-paraiso.dark.sh $HOME/base16-paraiso.dark.sh
[[ -s "$HOME/.bashrc" ]] && sed -i.bak-base16 '/base16-paraiso\.dark\.sh/d' $HOME/.bashrc
echo '. ~/base16-paraiso.dark.sh' >> $HOME/.bashrc
[[ -L "$HOME/.Xresources" ]] && rm $HOME/.Xresources
[[ -f "$HOME/.Xresources" ]] && mv $HOME/.Xresources $HOME/.Xresources.bak
ln -s $PWD/.Xresources $HOME/.Xresources
[[ -L "$HOME/.dircolors" ]] && rm $HOME/.dircolors
[[ -f "$HOME/.dircolors" ]] && mv $HOME/.dircolors $HOME/.dircolors.bak
ln -s $PWD/.dircolors $HOME/.dircolors
[[ -L "$HOME/.bash_aliases" ]] && rm $HOME/.bash_aliases
[[ -f "$HOME/.bash_aliases" ]] && mv $HOME/.bash_aliases $HOME/.bash_aliases.bak
ln -s $PWD/.bash_aliases $HOME/.bash_aliases

