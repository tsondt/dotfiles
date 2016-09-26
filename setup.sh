#!/usr/bin/env bash
[[ -f $HOME/.vimrc ]] && mv $HOME/.vimrc $HOME/.vimrc.bak
[[ -L $HOME/.vimrc ]] && rm $HOME/.vimrc
ln -s $PWD/.vimrc $HOME/.vimrc
vim +PluginInstall +qall
[[ -f $HOME/.tmux.conf ]] && mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
[[ -L $HOME/.tmux.conf ]] && rm $HOME/.tmux.conf
ln -s $PWD/.tmux.conf $HOME/.tmux.conf
[[ -f $HOME/.tmuxline.conf ]] && mv $HOME/.tmuxline.conf $HOME/.tmuxline.conf.bak
[[ -L $HOME/.tmuxline.conf ]] && rm $HOME/.tmuxline.conf
ln -s $PWD/.tmuxline.conf $HOME/.tmuxline.conf
[[ -f $HOME/.promptline.conf ]] && mv $HOME/.promptline.conf $HOME/.promptline.conf.bak
[[ -L $HOME/.promptline.conf ]] && rm $HOME/.promptline.conf
ln -s $PWD/.promptline.conf $HOME/.promptline.conf
[[ -s "$HOME/.bashrc" ]] && sed -i.bak '/promptline\.conf/d' $HOME/.bashrc
echo '. ~/.promptline.conf' >> $HOME/.bashrc
echo 'export TERM="xterm-256color"' >> $HOME/.bashrc
[[ -f "$HOME/base16-paraiso.dark.sh" ]] && mv $HOME/base16-paraiso.dark.sh $HOME/base16-paraiso.dark.sh.bak
[[ -L "$HOME/base16-paraiso.dark.sh" ]] && rm $HOME/base16-paraiso.dark.sh
ln -s $PWD/base16-paraiso.dark.sh $HOME/base16-paraiso.dark.sh
[[ -s "$HOME/.bashrc" ]] && sed -i.bak '/base16-paraiso\.dark\.sh/d' $HOME/.bashrc
echo '. ~/base16-paraiso.dark.sh' >> $HOME/.bashrc
