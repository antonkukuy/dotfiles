set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')
" snipmate{{{
"Plugin 'garbas/vim-snipmate'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
"}}}

"Plugin 'Rip-Rip/clang_complete'
"Plugin 'Shougo/neosnippet.vim'
Plugin 'junegunn/vim-plug'
Plugin 'SirVer/ultisnips'
Plugin 'Konfekt/FastFold'
"Plugin 'justmao945/vim-clang'
Plugin 'ron89/thesaurus_query.vim'
Plugin 'tpope/vim-obsession'
"Plugin 'beloglazov/vim-online-thesaurus'
"Plugin 'valloric/youcompleteme'
"Plugin 'cstrahan/vim-eclim'
Plugin 'junegunn/vader.vim' 
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'  " " для отображения веток в  airline
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'airblade/vim-gitgutter'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tmux-plugins/vim-tmux'      " for syntax and a few feachers for .tmux.conf
Plugin 'edkolev/promptline.vim'
Plugin 'jpalardy/vim-slime'
Plugin 'vim-multiple-cursors'
"Plugin 'ervandew/supertab'
Plugin 'vim-scripts/Auto-Pairs'
Plugin 'Shougo/neocomplete.vim'
" nerdtree-git-plugin
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'itchyny/calendar.vim'

    " let Vundle manage Vundle, required
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'VundleVim/Vundle.vim'

    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
   " filetype plugin on
    "
    " Brief help
    " :PluginList          - list configured plugins
    " :PluginInstall(!)    - install (update) plugins
    " :PluginSearch(!) foo - search (or refresh cache first) for foo
    " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
