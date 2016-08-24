"syntax on
filetype plugin on
set nocompatible
syntax enable
colorscheme molokai              " Указываем цветовую схему 
highlight Normal ctermfg=white ctermbg=black
"set cursorcolumn
"set cursorline                " Включаем подсветку строки с курсором
"set lines=38 columns=80            " Указываем размер окна
set rtp+=/home/Anton/opt_vim
set tags+=/home/Anton/opt_vim/tags


" 4 displaying text{{{

set list             " show hidden symbol
"set listchars=tab:▸\ ,eol:¬
"set listchars=tab:▹·,trail:·,extends:»,precedes:«,nbsp:×
set listchars=tab:▸·,eol:¬,precedes:«,extends:»,trail:-
"Invisible character colors 
highlight NonText ctermfg=40
highlight SpecialKey ctermfg=40


"}}}

" 11 messages and info {{{

set shortmess+=I    " Отключение приветственного сообщения
set showcmd         " Включение отображения незавершенных команд в статусной строке
set visualbell

" }}}

" 13 editing text {{{

"matchpairs list of pairs that match for the "%" command (local to buffer)
"set mps=(:),{:},[:]
set mps+=<:>

"}}}

" 14 tabs and indenting{{{

" Рекомендуется устанавливать количество пробелов в TAB равное четырем
set tabstop=4
set shiftwidth=4
set smartindent
set expandtab
set number           " Включаем нумерацию строк

"}}}

" 17 mapping {{{
set timeoutlen=800
" }}}

" 18 reading and writing files {{{

set autoread        " Включение автоматического перечтения файла при изменении

" }}}

" 20 command line editing {{{

set wcm=<Tab>
set wildmenu        " Показывать меню в командной строке

" }}}

" 21 executing external commands {{{

"translate
set keywordprg=trans\ {en=ru}\ -play\ -speak
"set keywordprg=trs\ {ja=@ja+en}

" }}}

" 23 language specific {{{

" Keyboard in normal mode for russian language
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Turn on russian language
set keymap=russian-jcukenwin

"}}}

set laststatus=2   " всегда показывать строку статуса
set hidden
set showmatch       " Довсвечивать совпадающую скобку
"set autochdir      " Автоматически устанавливать текущей, директорию отрытого файла
"set browsedir=buffer    " Начинать обзор с каталога текущего буфера
set confirm             " Включение диалогов с запросами

set foldmethod=marker  "auto folding using 3 open/closing brackets
set magic " For regular expressions turn magic on
set ignorecase " Searches are Non Case-sensitive
set smartcase " Do smart case matching when searching
set title " Show title
set acd " Vim will change the current working directory whenever you open a file
set undolevels=5000 " Максимальное количество изменений, которые могут быть отменены
set history=10000    " remember more commands


set iminsert=0
set imsearch=0

set fileencodings=utf-8,cp1251,cp866,koi8-r
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
"set termencoding=cp1251   " Cygwin do not work
set fileformat=unix          " default
set fileformats=unix,dos,mac

set mouse=a     " Turn on mouse
"set mouse=     "disable mouse
set mousehide   " Прятать указатель во время набора текста
set nohlsearch    " Воключает подсветку выражения которое вы ищете в тексте.

:ab head# #=================================================
:ab hcom "=================================================
:ab head; ;=================================================


" Colors for popup menu complition {{{
highlight Pmenu ctermbg=0 ctermfg=154
highlight PmenuSel ctermbg=1 ctermfg=154
highlight PmenuSbar ctermbg=0 ctermfg=154
"highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
"highlight PmenuSbar ctermbg=0 guibg=#d6d6d6 guifg=#dddd00
"}}}

