#THIS FILE HAS TO BE HIDDEN IN THE HOME DIRECTORY
source $HOME/.dotfiles/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="ontheme"

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_HOME="$HOME/Library/Android/sdk/platform-tools"
export ANDROID_AVD_HOME="$HOME/.android/avd"
export DEV_HOME="$HOME/development"
export PROMPT_EOL_MARK=''

export LANG=en_US.UTF-8

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/Cellar/binutils/2.34/bin:$DEV_HOME/flutter/bin:/$HOME/go/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_AVD_HOME"
export PATH="$PATH:/Applications/Wireshark.app/Contents/MacOS"
export PATH="$PATH:/$HOME/.gem/ruby/2.6.0/bin:$HOME/.rvm/bin"

export CLICOLORS=1

export PHP_MAMP_LOG="/Applications/MAMP/logs/php_error.log"
export POSTGRES_LOG="/usr/local/var/postgres/log/server.log"

######## LSCOLORS ########:
export LSCOLORS=cxdxdxBxfxDxexfxbxgxcx
export LS_COLORS="di=34;40:ln=31;40:so=31;40:pi=31;40:ex=32;40:bd=36;40:cd=36;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

export PGDATA="/usr/local/var/postgres"

# For a full list of active aliases, run `alias`.
alias ls="ls -G"
alias dc="cd"
alias grep="grep --color=auto"
alias g++="g++ -std=c++14"
alias dcmp="docker compose"
alias python="/usr/local/bin/python3"

#alias dock-stat="docker run --rm -ti -p 127.0.0.1:8888:8888 -v $(pwd):/home/jovyan/my-work dariomalchiodi/sad"
#alias adbconn='adb connect $(adb shell ifconfig wlan0 | grep "inet addr" | cut -f2 -d: | cut -f1 -d" "):5555'
#alias git-cp='git add -A && git commit -m "$(git status | grep -E '(new|modified|deleted)')"' 
#alias update-vlbn="ssh -t vlbnjsrx@198.54.126.114 -p 21098 \"cd public_html; git pull\""

opt() {
	man $1 | awk 'BEGIN{print "OPTIONS"} /^ +-/' | less
}

playgo() {
	cd ~/Playground
	mkdir $1
	cd $1
	touch main.go
	echo 'package main\n\nimport "fmt"\n\nfunc main() {\n\tfmt.Println("hi")\n}' > main.go
	code -n main.go
}

playpy() {
	cd ~/Playground
	mkdir $1
	cd $1
	jupyter lab
}


# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"
