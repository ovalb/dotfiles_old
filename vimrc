"onval's .vimrc
"This installs the vim-plug plugin manager automatically 
if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif

"Plugins will be downloaded under the specific directory
"You need to type :PlugInstall to actually install the plugins
call plug#begin('~/.vim/plugged')

"Here are my plugins
Plug 'lifepillar/pgsql.vim'

call plug#end()

syntax on

set nocompatible
set number
set nobackup
set tabstop=4
set shiftwidth=4
set ruler
set hlsearch
set noswapfile
set cursorline
set t_Co=256 "fixes tmux issue

colorscheme noctu
