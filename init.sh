#!/bin/bash
# Set up a new mac os system with this script

#backup .zshrc and .vimrc
if [[ ! -e "$HOME/.zshrc" ]]; then
   cp $HOME/.zshrc $HOME/.zshrc.old
fi

if [[ ! -e "$HOME/.vimrc" ]]; then
   cp $HOME/.vimrc $HOME/.vimrc.old
fi

#link them to the .dotfiles
echo "source $HOME/.dotfiles/zshrc" > $HOME/.zshrc
echo "source $HOME/.dotfiles/vimrc" > $HOME/.vimrc

#install homebrew
if [[ ! -e "/usr/local/Homebrew" ]]; then
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#install oh-my-zsh
if [[ ! -e "$HOME/.oh-my-zsh" ]]; then
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

#copy my theme there
cp $HOME/.dotfiles/ontheme.zsh-theme $HOME/.oh-my-zsh/themes/
