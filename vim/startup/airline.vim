
""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts =1    " Replace symbols
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
" расширение для отображения табов
let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#tab_nr_type=1
"let g:airline#extensions#tabline#buffer_idx_mode=0
" расширение для отображения веток git (использует плагин fugitive)
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tmuxline#enabled = 0    " 1 for tmuxline confugure files 
" ========================
"иНТЕГРация со сторонними плагинами
let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1
"=========================

"==========Attempts for correct works============

 " let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }


  function! AiflineInit()
      let g:airline_section_a = airline#section#create(['mode',' ','branch'])
      let g:airline_section_b = airline#section#create_left(['hunks','%f'])
      "let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
      let g:airline_section_c = airline#section#create(['filetype'])
      " let g:airline_section_x = airline#section#create(['%P',' ','[%{strlen(&fenc)?&fenc:&enc}]'])
    let g:airline_section_x = airline#section#create(['%P',' ','ffenc'])
    let g:airline_section_y = airline#section#create(['%B'])
    "let g:airline_section_z = airline#section#create_right(['%l','%c'])
    let g:airline_section_z = airline#section#create_right(['%l','%c','%{ObsessionStatus()}'])
endfunction
autocmd VimEnter * call AiflineInit()

" function! MyPlugin(...)
"     " first variable is the statusline builder
"     let builder = a:1
" 
"     " WARNING: the API for the builder is not finalized and may change
"     call builder.add_section('Normal', '%f')
"     call builder.add_section('WarningMsg', '%{getcwd()}')
"     call builder.split()
"     call builder.add_section('airline_z', '%p%%')
" 
"     " tell the core to use the contents of the builder
"     return 1
"   endfunction

"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'



"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif
" let g:airline_symbols.space = "\ua0"
" let g:airline_branch_prefix = '<'
" let g:airline_readonly_symbol = '<'
" let g:airline_linecolumn_prefix = '<'
" let g:airline_left_sep = '▶'
" let g:airline_left_alt_sep = '>'
" let g:airline_right_sep = '◀'
" let g:airline_right_alt_sep = '<'
" if !exists('g:airline_symbols')
    "let g:airline_symbols = {}
"endif
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

"==========================================



"=============Поддержка цвета в консоле ComEmu======================
" if has('win32') && !has('gui_running') && !empty($CONEMUBUILD)
"  set termencoding=cp1251
"    set term=xterm
"    set t_Co=256
"   let &t_AB="\e[48;5;%dm"
"   let &t_AF="\e[38;5;%dm"
" "let g:airline_powerline_fonts =0
"  let g:airline#extensions#tabline#left_sep = ' '
"  let g:airline#extensions#tabline#left_alt_sep = '|'
"  let g:airline#extensions#tabline#right_sep = ' '
"  let g:airline#extensions#tabline#right_alt_sep = '|'
"  " Cursor is green, Cyan when ":lmap" mappings are active
" " highlight Cursor ctermbg=Green ctermfg=NONE
" " highlight lCursor ctermbg=Cyan ctermfg=NONE
" endif
"===================================================================

" gvim or vim {{{
"  if has("gui_win32")
"
"  let g:airline_powerline_fonts =1
"  else
"  " Don't show seperators
"  let g:airline_left_sep=''
"  let g:airline_right_sep=''
"  let g:airline_powerline_fonts =0
"  endif
" }}}


