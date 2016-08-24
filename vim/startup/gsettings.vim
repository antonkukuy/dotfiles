" при нажатии Ctrl+^ у нас будет переключаться раскладка
" set help, example - :helptags ~/vimfiles/bundle/ctrlp.vim/doc

language ctype Russian_Russia.1251
" Включаем нумерацию строк
set nu
set wildmenu
set wcm=<Tab>
map <F8> :emenu Encoding<TAB>
menu Кодировка.koi8-r :e ++enc=koi8-r<CR>
menu Кодировка.windows-1251 :e ++enc=cp1251<CR>
menu Кодировка.cp866 :e ++enc=cp866<CR>
menu Кодировка.utf-8 :e ++enc=utf8 <CR>

set laststatus=2   " всегда показывать строку статуса

" Компоненты строки статуса
"set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]



" Включение поддержки русского  языка 
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
"highlight lCursor guifg=NONE guibg=Cyan
 " Cursor is green, Cyan when ":lmap" mappings are active
"  highlight Cursor guibg=Green guifg=NONE
"set fileencoding=utf-8
"set fileencodings=utf-8,cp1251,cp866,koi8-r
"set encoding=utf-8
"set encoding=cp866   " for normal load from console to gvim

set termencoding=cp1251


lan mes ru_RU.UTF-8 " Отображение кириллицы во внутренних сообщениях программы

"set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)


" Отображение кириллицы в меню
 source $VIMRUNTIME/delmenu.vim
set langmenu=ru_RU.UTF-8
"source $VIMRUNTIME/menu.vim

" Проверка орфографии включается
" setlocal spell spelllang=ru_ru,en_us

" Отключается проверка орфографии
" setlocal spell spelllang=

" set iskeyword=@,48-57,_,192-255

" ================== theme =====================
colorscheme molokai
syntax enable
"let g:rehash256 = 1
" let g:molokai_original = 1 
" set background=dark
"================================================

"Rubtine path manipulation plugins; pathogen
"execute pathogen#infect()
"filetype plugin indent on
"syntax on

" ================================================

" font
set guifont=Meslo_LG_S_for_Powerline:h12


" colorscheme molokai                                  " Указываем цветовую схему для GUI-режима  
 set cursorline                                      " Включаем подсветку строки с курсором  
"set lines=45 columns=80                            " Указываем размер окна  
 set guioptions-=e                                   " Убираем вкладки GUI делаем их как в консоли  
set guioptions-=m                                  " Скрываем панель меню  
 set guioptions-=T                                   " Скрываем панель инструментов  
set guioptions-=r                                  " Скрываем полосу прокрутки справа  
set guioptions-=l                                  " Скрываем полосу прокрутки слева  
set guioptions-=L                                  " Скрываем полосу прокрутки слева  

  " Константы не подчеркиваются но имеют чуть более яркий фон
  "highlight Normal guibg=grey90
  "highlight NonText guibg=grey80
" highlight Constant gui=NONE guibg=grey95
" highlight Special gui=NONE guibg=grey95
 " Cursor is green, Cyan when ":lmap" mappings are active
  highlight Cursor guibg=Green guifg=NONE
  highlight lCursor guibg=Cyan guifg=NONE

