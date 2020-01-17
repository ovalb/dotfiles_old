#THIS FILE HAS TO BE HIDDEN IN THE HOME DIRECTORY
#
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ontheme"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_HOME="$HOME/Library/Android/sdk/platform-tools"
export ANDROID_AVD_HOME="$HOME/.android/avd"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_AVD_HOME"
export CLICOLORS=1

#tail -f PHP_MAMP_LOG to print output dinamically to a terminal
export PHP_MAMP_LOG="/Applications/MAMP/logs/php_error.log"
export POSTGRES_LOG="/usr/local/var/postgres/log/server.log"

export GOOGLE_APPLICATION_CREDENTIALS="$HOME/Downloads/service-key.json"
#Java var home:
#export JAVA_HOME="/usr/libexec/java_home"

#export ANDROID_IP="192.168.0.3"

######## LSCOLORS ########:
#a=black, b=red, c=green, d=brown, e=blue, f=magenta, g=cyan, h=light_grey
#Capital letters (A, B, C...) are the bold corresponding letters
#'x' is the default (either foreground, or background)
#1. Directory	2. Sym Link	3. Socket	4. Pipe		5. Exe
#6. Block special	7.Char special		8.Exe setUid 	9.Exe setGid
#10 Directory w/ sticky bit	11. Directory without sticky bit
export LSCOLORS=cxdxdxBxfxDxexfxbxgxcx
export LS_COLORS="di=34;40:ln=31;40:so=31;40:pi=31;40:ex=32;40:bd=36;40:cd=36;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

export PGDATA="/usr/local/var/postgres"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes.
# For a full list of active aliases, run `alias`.
alias ls="ls -G"
alias grep="grep --color=auto"
alias dock-stat="docker run --rm -ti -p 127.0.0.1:8888:8888 -v $(pwd):/home/jovyan/my-work dariomalchiodi/sad"

opt() {
	man $1 | awk 'BEGIN{print "OPTIONS"} /^ +-/' | less
}
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Downloads/google-cloud-sdk/path.zsh.inc" ]; then source "$HOME/Downloads/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc" ]; then source "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc"; fi
alias adbconn='adb connect $(adb shell ifconfig wlan0 | grep "inet addr" | cut -f2 -d: | cut -f1 -d" "):5555'
