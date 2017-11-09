"syntax on
filetype plugin on
set nocompatible
syntax enable
colorscheme molokai
highlight Normal ctermfg=white ctermbg=black
"set cursorcolumn
"set cursorline                " Turn on highlight string
"set lines=38 columns=80            " size window
set rtp+=/home/Anton/options_vim
set tags+=/home/Anton/options_vim/tags
" set completeopt-=preview
autocmd CompleteDone * pclose


" 4 displaying text{{{

set showbreak=..
set linebreak
set list             " show hidden symbol
"set listchars=tab:▹·,trail:·,extends:»,precedes:«,nbsp:×
"set listchars=tab:×·,eol:¬,precedes:«,extends:»,trail:-
set listchars=tab:\|\ ,eol:¬,precedes:«,extends:»,trail:·
"Invisible character colors 
highlight NonText ctermfg=239
highlight SpecialKey ctermfg=239
"highlight NonText ctermfg=40


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

set tabstop=4
set shiftwidth=4 
set softtabstop=4
set smartindent
set expandtab
set number

" Only do this part when compiled with support for autocommands
if has("autocmd")
    filetype plugin indent on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 noexpandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript,dsl,text setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType vim setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType tex setlocal ts=2 sts=2 sw=2 expandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

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
" lyokha/vim-xkbswitch plugin does this
" set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Turn on russian language
set keymap=russian-jcukenwin

"}}}

" TEX. cycle through all the figure labels automatically
set iskeyword+=:

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

set fileencodings=utf-8,ucs-bom,koi8-r,cp1251,cp866,koi8-u
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
"set termencoding=cp1251   " Cygwin do not work
set fileformat=unix          " default
set fileformats=unix,dos,mac

set mouse=a     " Turn on mouse
"set mouse=     "disable mouse
set mousehide   " Hide mouse when you are working.
set nohlsearch    " Turn off highlight's searching

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

 " Follow symlinks when opening a file {{{
  " NOTE: this happens with directory symlinks anyway (due to Vim's chdir/getcwd
  "       magic when getting filenames).
  " Sources:
  "  - https://github.com/tpope/vim-fugitive/issues/147#issuecomment-7572351
  "  - http://www.reddit.com/r/vim/comments/yhsn6/is_it_possible_to_work_around_the_symlink_bug/c5w91qw
  function! MyFollowSymlink(...)
    if exists('w:no_resolve_symlink') && w:no_resolve_symlink
      return
    endif
    let fname = a:0 ? a:1 : expand('%')
    if fname =~ '^\w\+:/'
      " Do not mess with 'fugitive://' etc.
      return
    endif
    let fname = simplify(fname)

    let resolvedfile = resolve(fname)
    if resolvedfile == fname
      return
    endif
    let resolvedfile = fnameescape(resolvedfile)
    let sshm = &shm
    set shortmess+=A  " silence ATTENTION message about swap file (would get displayed twice)
    exec 'file ' . resolvedfile
    let &shm=sshm

    " Re-init fugitive.
    call fugitive#detect(resolvedfile)
    if &modifiable
      " Only display a note when editing a file, especially not for `:help`.
      redraw  " Redraw now, to avoid hit-enter prompt.
      echomsg 'Resolved symlink: =>' resolvedfile
    endif
  endfunction
  command! FollowSymlink call MyFollowSymlink()
  command! ToggleFollowSymlink let w:no_resolve_symlink = !get(w:, 'no_resolve_symlink', 0) | echo "w:no_resolve_symlink =>" w:no_resolve_symlink
  au BufReadPost * nested call MyFollowSymlink(expand('%'))

" }}}

" Make :help appear in a full-screen tab, instead of a window {{{

"Only apply to .txt files...
augroup HelpInTabs
  autocmd!
  autocmd BufEnter  *.txt   call HelpInNewTab()
augroup END

"Only apply to help files...
function! HelpInNewTab ()
  if &buftype == 'help'
    "Convert the help window to a tab...
    execute "normal \<C-W>T"
  endif
endfunction
"}}}
