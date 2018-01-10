#!/bin/bash

# echo "Copying fonts..."

# if [ ! -d ~/.fonts ]; then
  # mkdir -p ~/.fonts;
# fi

# cp fonts/Inconsolata-Regular.ttf ~/.fonts/Inconsolata-Regular.ttf

echo "Copying Vim config..."

rm ~/.vimrc
cp ./vimrc ~/.vimrc
rm -rf ~/.vim
cp -r ./vim ~/.vim

# echo "Copying Bash config..."

# cp bash/bashrc ~/.bashrc
# source ~/.bashrc

# echo "Copying Fish config..."

# echo "Copying Git config..."

# echo "Copying Tmux config..."

# cp tmux/tmux.conf ~/.tmux.conf
# tmux source-file ~/.tmux.conf
