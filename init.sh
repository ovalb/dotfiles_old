#!/bin/bash
# Set up a new mac os system with this script

#backup .zshrc and .vimrc
if [[ ! -e "$HOME/.zshrc" ]]; then
   cp $HOME/.zshrc $HOME/.zshrc.old
   echo "Your old zshrc has been backed up to .zshrc.old"
fi

if [[ ! -e "$HOME/.vimrc" ]]; then
   cp $HOME/.vimrc $HOME/.vimrc.old
   echo "You old vimrc has been backed up to .vimrc.old"
fi

#link them to the .dotfiles
echo "source $HOME/.dotfiles/zshrc" > $HOME/.zshrc
echo "source $HOME/.dotfiles/vimrc" > $HOME/.vimrc

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

	#install iterm
	brew cask install iterm2
fi
