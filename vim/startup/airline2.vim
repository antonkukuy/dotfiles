" *** Vim-airline 
" выбираем цветовую тему (badwolf, durant, hybrid)
let g:airline_theme='hybrid'
" включаем использование символов из спец шрифтов для airline
if has('win32') || has('win64')
    let g:airline_symbols = {}

    let g:airline_left_sep = '⮀'
    let g:airline_left_alt_sep = '⮁'
    let g:airline_right_sep = '⮂'
    let g:airline_right_alt_sep = '⮃'
    let g:airline_symbols.branch = '⭠'
    let g:airline_symbols.readonly = '⭤'
    let g:airline_symbols.linenr = '⭡'
else    
    let g:airline_powerline_fonts=1
endif
" расширение для отображения табов
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#tab_nr_type=1
let g:airline#extensions#tabline#buffer_idx_mode=0
" расширение для отображения веток git (использует плагин fugitive)
let g:airline#extensions#branch#enabled=1
