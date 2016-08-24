"g:multicursor_normal_maps
"let g:multicursor_insert_maps ={'\':1}

" Map start key separately from next key
"let g:multi_cursor_start_key='<F3>'

let g:multi_cursor_use_default_mapping=1

" Default mapping
""let g:multi_cursor_next_key='<F3>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'

" Called once right before you start selecting multiple cursors
"function! Multiple_cursors_before()
"  if exists(':NeoCompleteLock')==2
"    exe 'NeoCompleteLock'
"  endif
"endfunction
"
"" Called once only when the multiple selection is canceled (default <Esc>)
"function! Multiple_cursors_after()
"  if exists(':NeoCompleteUnlock')==2
"    exe 'NeoCompleteUnlock'
"  endif
"endfunction

" To work with neocomplete
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
endfunction
function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
endfunction
