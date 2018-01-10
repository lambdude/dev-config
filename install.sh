#!/bin/bash

# echo "Copying fonts..."

# if [ ! -d ~/.fonts ]; then
  # mkdir -p ~/.fonts;
# fi

# cp fonts/Inconsolata-Regular.ttf ~/.fonts/Inconsolata-Regular.ttf

echo "Copying Vim config..."

rm $HOME/.vimrc
cp ./vimrc $HOME/.vimrc
rm -rf $HOME/.vim
cp -r ./vim $HOME/.vim

# echo "Copying Bash config..."

# cp bash/bashrc ~/.bashrc
# source ~/.bashrc

# echo "Copying Fish config..."

