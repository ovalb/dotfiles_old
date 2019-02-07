#!/bin/bash
# Set up a new mac os system with this script

#backup .zshrc and .vimrc
if [[ -f "$HOME/.zshrc" ]]; then
   cp $HOME/.zshrc $HOME/.zshrc.old
   echo "Your old zshrc has been backed up to .zshrc.old"
fi

if [[ -f "$HOME/.vimrc" ]]; then
   cp $HOME/.vimrc $HOME/.vimrc.old
   echo "You old vimrc has been backed up to .vimrc.old"
fi

#link them to the .dotfiles
echo "source $HOME/.dotfiles/zshrc" > $HOME/.zshrc
echo ".zshrc has been linked to dotfiles folder"

echo "source $HOME/.dotfiles/vimrc" > $HOME/.vimrc
echo ".vimrc has been linked to dotfiles folder"

mkdir $HOME/.vim/colors
cp $HOME/.dotfiles/noctu.vim $HOME/.vim/colors


#link tmux.conf
if [[ -f "$HOME/.tmux.conf" ]]; then
	cp $HOME/.tmux.conf $HOME/.tmux.conf.old
	echo "Your tmux.conf has been backed up to .tmux.conf.old"
fi

#install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "source $HOME/.dotfiles/tmux.conf" > $HOME/.tmux.conf
echo ".tmux.conf has been linked to dotfiles folder"

set-window-option -g pane-base-index 1

#install oh-my-zsh
if [[ ! -e "$HOME/.oh-my-zsh" ]]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	echo "Oh-my-zsh has been installed"
fi

#copy my theme there
cp $HOME/.dotfiles/ontheme.zsh-theme $HOME/.oh-my-zsh/themes/
echo "My oh-my-zsh theme has been copied!"

#install homebrew
if [[ ! -e "/usr/local/Homebrew" ]]; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	echo "Homebrew installed"

	#install software
	brew cask install iterm2
	brew cask install alfred
fi
