#!/bin/bash
# Set up a new mac os system with this script

#backup .zshrc and .vimrc
if [[ -e $HOME/.zshrc ]]
   cp $HOME/.zshrc $HOME/.zshrc.old

if [[ -e $HOME/.vimrc ]]
   cp $HOME/.vimrc $HOME/.vimrc.old

#link them to the .dotfiles
echo "source $HOME/.dotfiles/zshrc" > $HOME/.zshrc
echo "source $HOME/.dotfiles/vimrc" > $HOME/.vimrc

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#copy my theme there
cp $HOME/.dotfiles/ontheme.zsh-theme $HOME/.oh-my-zsh/themes/
