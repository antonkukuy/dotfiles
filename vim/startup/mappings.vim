
" To prevent Vim from RECURSIVELY REPLACING the mapped keys (e.g. :inoremap ab xyzab) in the {rhs} of map, you can set the 'noremap' option.

" Ctrl+^ into insert mode change language type
" Ctrl+^ into normal mode change relative buffer

" set help, example - :helptags ~/vimfiles/bundle/ctrlp.vim/doc
" sign ',' ';' - modificators
let mapleader = ","    "Leader
noremap ;; ;
noremap ,, ,
inoremap jk <ESC>

map <C-z> <Nop>
imap <C-j> <C-e><CR>

" termcap options {{{
" if &term =~ "xterm"
"   "  start insert mode (bar cursor shape)
"   let &t_SI = "\<Esc>]12;purple\x7"
"   " end insert mode (block cursor shape)
"   let &t_EI = "\<Esc>]12;blue\x7"
" endif
"}}}

" Encodings "{{{
    " Encoding changes at reading file <F7>
    "{{{
    menu Encoding.Read.UTF8<TAB><F7> :e ++enc=utf8 <CR>
    menu Encoding.Read.KOI8-R<TAB><F7> :e ++enc=koi8-r<CR>
    menu Encoding.Read.KOI8-U<TAB><F7> :e ++enc=koi8-u<CR>
    menu Encoding.Read.CP1251<TAB><F7> :e ++enc=cp1251<CR>
    menu Encoding.Read.CP866<TAB><F7> :e ++enc=cp866<CR>
    menu Encoding.Read.UCS-2le<TAB><F7> :e ++enc=ucs2-le<CR>
    menu Encoding.Read.UCS2<TAB><F7> :e ++enc=ucs2<CR>
    map <F7> :emenu Encoding.Read.<TAB>
    "}}}

    " Encoding changes at writing file <F8>
    "{{{
    menu Encoding.Write.UTF8<TAB><F8> :set fenc=utf8 <CR>
    menu Encoding.Write.KOI8-R<TAB><F8> :set fenc=koi8-r<CR>
    menu Encoding.Write.KOI8-U<TAB><F8> :set fenc=koi8-u<CR>
    menu Encoding.Write.CP1251<TAB><F8> :set fenc=cp1251<CR>
    menu Encoding.Write.CP866<TAB><F8> :set fenc=cp866<CR>
    menu Encoding.Read.UCS-2le<TAB><F7> :e fenc=ucs2-le<CR>
    menu Encoding.Read.UCS2<TAB><F7> :e fenc=ucs2<CR>
    map <F8> :emenu Encoding.Write.<TAB>
    "}}}
"}}}

" Spell "{{{
    " Default of spell is turn off (setlocal nospell). Menu chenges of SpellLang <F9>
    "{{{
    menu SpellLang.nospell<TAB><F9> :setlocal nospell <CR>
    menu SpellLang.RU<TAB><F9> :setlocal spell spelllang=ru_yo <CR>
    menu SpellLang.EN<TAB><F9> :setlocal spell spelllang=en_us <CR>
    "}}}

    "Test multilanguages {ru_en}
    "{{{
    " Dictionaries: ftp://ftp.vim.org/pub/vim/runtime/spell/ to folder ~/.vim/spell
    menu SpellLang.RU_EN<TAB><F9> :setlocal spell spelllang=ru_ru,en_us <CR>
    map <F9> :emenu SpellLang.<TAB>
    "}}}
    "}}}

" Save; Quit "{{{
    " Save file <F12>
    "{{{
    nmap <F12> :wq<CR>
    imap <F12> <Esc>:wq<CR>
    vmap <F12> <Esc>:wq<CR>
    "}}}

    " Quit editor <F6>
    "{{{
    " nmap <F6> :q<CR>
    " imap <F6> <Esc>:q<CR>
    " vmap <F6> <Esc>:q<CR>
    "}}}
    "}}}

" Hack for Alt into terminal (It don't always work correct) {{{
" Alt + ascii letters' codes map
for i in range(65,90) + range(97,122)    "[A-Z] + [a-z]
  let c = nr2char(i)
  exec "set <M-".c.">=\e".c.""
endfor


" Without that <F1>-<F12> do not work
for i in range(1040,1103)     "[А-я]
  let c = nr2char(i)
  exec "map \033".c." <M-".c.">"
endfor
"}}}

" Tex files{{{
  autocmd FileType tex inoremap <buffer> / \
  autocmd FileType tex inoremap <buffer> \ /
"}}}

" Various map {{{
    "Convert inserted text to normal mode commands
    inoremap <F11> <ESC>u@.
    nnoremap <leader>z :w \| :suspend<CR>
    nnoremap <Space> za
    "nnoremap Q @='n.'<CR>
    nnoremap Q :normal n.<CR>

    nnoremap <silent> <Plug>TransposeCharacters xp
    \:call repeat#set("\<Plug>TransposeCharacters")<CR>
    nmap xp <Plug>TransposeCharacters

    " Formating
    "{{{
    nnoremap <leader>gq :%!pandoc -f html -t markdown \| pandoc -f markdown -t html<CR>
    vnoremap <leader>gq :!pandoc -f html -t markdown \| pandoc -f markdown -t html<CR>
    "}}}

    " Command-line 
    "{{{
    " Open the command-line window
    cnoremap <A-e> <C-f>
    "}}}

    " Quick movements
    " {{{
    inoremap II <C-o>I
    inoremap AA <C-o>A
    inoremap OO <C-o>O
    " }}}

    "Line modifications
    "{{{
    inoremap CC <C-o>C
    "inoremap SS <C-o>S
    inoremap DD <C-o>dd
    inoremap UU <C-o>u
    inoremap RR <C-o><C-R>
    "}}}

    " SAVE and RELOAD current file
"{{{
"noremap <A-r>  :w<CR>:so %<CR>
"noremap <A-s>  :w<CR>
noremap <leader>R  :w \| source $MYVIMRC \| echo "source is done" \| sleep 1<CR>
noremap <leader>s  :w<CR>
inoremap SS <ESC>:w<CR>
noremap <leader>sq  :w \| :q<CR>
"nnoremap <leader>sv :source $MYVIMRC<CR>

nmap <A-s>  :!gcc -o hello hello.c<CR>
nmap <A-r> ,s:exec '!gcc -o hello hello.c && ./hello > /dev/pty1 \|\| echo "Programm is not correct"> /dev/pty1'<CR><CR>
nmap ,p ,s:exec '!python3 %> /dev/pty1 \|\| echo "Programm is not correct"> /dev/pty1'<CR><CR>
nmap ,P ,s:exec '!python3 %'<CR>
"map <A-r> ,s:exec '!gcc -o hello hello.c;echo > /dev/pty1;echo > /dev/pty1;./hello > /dev/pty1'<CR><CR>

"Reload file
nmap <leader>re  :e!<CR>
"}}}

    "Internal surround
"{{{
" Change surround /any_word/ to *any_word*
nmap cs/* F/r*f/r*
" delete inside /any_word/
nmap ci/ F/ldt/i
" delete inside *any_word*
nmap ci* F*ldt*i
" Highlight inside <>any_word<>
nmap ci> F>lvt<
"}}}

    " Internal auto-pairs
"{{{
" create <cursor_position>
" imap < <><C-b>
"}}}

    " more natural movement with wrap on
"{{{
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
"}}}

    "Paste
"{{{
nnoremap <A-P>  :set invpaste paste?<CR>
set pastetoggle=<M-S-p>
"}}}

"}}}

"Windows {{{
" Move faster between windows
"{{{
nnoremap <silent> <C-h> :call WindMove('h')<CR>
nnoremap <silent> <C-j> :call WindMove('j')<CR>
nnoremap <silent> <C-k> :call WindMove('k')<CR>
nnoremap <silent> <C-l> :call WindMove('l')<CR>

function! WindMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if(match(a:key, '[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction
"}}}

" scroll screen faster
"{{{
"map <C-e> 4k
"map <C-y> 4j
"}}}

" toogle tabs
nmap <C-w><TAB> :tabn<CR>

" Close window 
"{{{
nnoremap ;< :cclose<CR>  " after search, for preview windows <C-W>z
nnoremap ;o :only<CR>
nnoremap ;c :close<CR>
nnoremap ;j <C-w>j:close<CR>
nnoremap ;k <C-w>k:close<CR>
nnoremap ;h <C-w>h:close<CR>
nnoremap ;l <C-w>l:close<CR>

inoremap <M-;>j <C-o><C-w>j<C-o>:close<CR>
inoremap <M-;>k <C-o><C-w>k<C-o>:close<CR>
inoremap <M-;>h <C-o><C-w>h<C-o>:close<CR>
inoremap <M-;>l <C-o><C-w>l<C-o>:close<CR>
"}}}
"}}}

" Buffers {{{

nmap <silent> ;p :bprevious<CR>
nmap <silent> ;n :bnext<CR>
nmap <silent> ;t :BuffersToggle<CR>
nmap <silent> ;bd :bdelete<CR>

" }}}

" Git {{{

nnoremap <leader>gb  :!git branch<CR>
nnoremap <leader>gco  :!git checkout 
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>ga  :!git add .<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gdu :diffupdate<CR>
nnoremap <leader>gdc :Gvdiff --cached<CR>
nnoremap <leader>gac  :!git commit -a -m '

"}}}

" Emacs {{{
" Basic cursor movement and deletion keybindings from emacs, for vim.

" insert mode {{{
"imap <C-b> <Left>
"imap <C-f> <Right>
"imap <A-j> <C-o>j
"imap <A-k> <C-o>k
"imap <C-a> <C-o>:call <SID>home()<CR>
"imap <C-e> <End>
        "imap <C-d><C-d> <Del>
        "imap <A-h> <BS>
        "imap <A-E> <C-r>=<SID>kill_line()<CR>
"imap <A-e> <C-o>dw
"imap <A-E> <C-o>b<C-o>dw
"imap <A-w> <C-o>b<C-o>dw
"imap <A-W> <C-o>F <C-o>dt 
"imap <A-y> <ESC>^dwi
"imap <A-h> <C-o>b
"imap <A-H> <C-o>B
"imap <A-l> <C-o>w
"imap <A-L> <C-o>W
"}}}

" command line mode {{{
"cmap <C-p> <Up>
"cmap <C-n> <Down>
"cmap <C-b> <Left>
"cmap <C-f> <Right>
"cmap <C-a> <Home>
"cmap <C-e> <End>
    "cnoremap <C-d> <Del>
"cnoremap <C-h> <BS>
"cnoremap <C-k> <C-f>D<C-c><C-c>:<Up>
"RU
"cmap <C-з> <Up>
"cmap <C-т> <Down>
"cmap <C-и> <Left>
"cmap <C-а> <Right>
"cmap <C-ф> <Home>
"cmap <C-у> <End>
"cnoremap <C-в> <Del>
"cnoremap <C-р> <BS>
"cnoremap <C-л> <C-f>D<C-c><C-c>:<Up>

function! s:home()
    let start_col = col('.')
    normal! ^
    if col('.') == start_col
        normal! 0
    endif
    return ''
endfunction

function! s:kill_line()
    let [text_before_cursor, text_after_cursor] = s:split_line_text_at_cursor()
    if len(text_after_cursor) == 0
        normal! J
    else
        call setline(line('.'), text_before_cursor)
    endif
    return ''
endfunction

function! s:split_line_text_at_cursor()
    let line_text = getline(line('.'))
    let text_after_cursor  = line_text[col('.')-1 :]
    let text_before_cursor = (col('.') > 1) ? line_text[: col('.')-2] : ''
    return [text_before_cursor, text_after_cursor]
endfunction
" }}}
" }}}

" Command line complition {{{

cmap < <><C-b>
cmap ( ()<C-b>
cmap { {}<C-b>
" }}}

"Move string {{{
" motion string 'scrooloose/nerdtree'
nmap <A-j> :move+<CR>==
nmap <A-k> :move-2<CR>==
xmap <A-k> :move-2<CR>gv=gv
xmap <A-j> :move'>+<CR>gv=gv
imap <A-J> <Esc>:m .+1<CR>==gi
imap <A-K> <Esc>:m .-2<CR>==gi
vmap <A-j> :m '>+1<CR>gv=gv
vmap <A-k> :m '<-2<CR>gv=gv
"RU
"nnoremap <A-о> :move+<CR>==
"nnoremap <A-л> :move-2<CR>==
"xnoremap <A-л> :move-2<CR>gv=gv
"xnoremap <A-о> :move'>+<CR>gv=gv
"inoremap <A-О> <Esc>:m .+1<CR>==gi
"inoremap <A-Л> <Esc>:m .-2<CR>==gi
"vnoremap <A-о> :m '>+1<CR>gv=gv
"vnoremap <A-л> :m '<-2<CR>gv=gv
"nmap <S-Enter> O<Esc>j
"nmap <CR> o<Esc>k

"}}}

" Search {{{
nnoremap n nzz
nnoremap N Nzz
"nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
"RU
"nnoremap т nzz
"nnoremap Т Nzz
nnoremap g/ :exe "/". expand("<cWORD>")<CR>
vnoremap g/ y/<C-R>"<CR>
"}}}

" Highlight Word {{{
"
" This mini-plugin provides a few mappings for highlighting words temporarily.
"
" Sometimes you're looking at a hairy piece of code and would like a certain
" word or two to stand out temporarily.  You can search for it, but that only
" gives you one color of highlighting.  Now you can use <leader>N where N is
" a number from 1-6 to highlight the current word in a specific color.

"Allow you clean highlight
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>


function! HiInterestingWord(n)
    " Save our location.
    normal! mz

    " Yank the current word into the z register.
    normal! "zyiw

    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n

    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)

    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'

    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)

    " Move back to our original location.
    normal! `z
endfunction " }}}

" HiInterestingWord {{{

nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
nnoremap <silent> <leader>6 :call HiInterestingWord(6)<cr>

" }}}

" Default Highlights {{{

hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195

" }}}

" Functions {{{
"Align assignments 
"{{{
nmap <silent>  ;=  :call AlignAssignments()<CR>

function! AlignAssignments ()
    "Шаблоны, необходимые для нахождения операторов присваивания...
    let ASSIGN_OP   = '[-+*/%|&]\?=\@<!=[=~]\@!'
    let ASSIGN_LINE = '^\(.\{-}\)\s*\(' . ASSIGN_OP . '\)'

    "Находим блок кода, с которым будем работать (непустые строки с одинаковым отступом)
    let indent_pat = '^' . matchstr(getline('.'), '^\s*') . '\S'
    let firstline  = search('^\%('. indent_pat . '\)\@!','bnW') + 1
    let lastline   = search('^\%('. indent_pat . '\)\@!', 'nW') - 1
    if lastline < 0
        let lastline = line('$')
    endif

    "Находим позицию в строке, по которой следует выравнивать операторы присваивания...
    let max_align_col = 0
    let max_op_width  = 0
    for linetext in getline(firstline, lastline)
        "В этой строке имеется оператор присваивания?
        let left_width = match(linetext, '\s*' . ASSIGN_OP)

        "Если оператор имеется, отслеживаем максимальные позицию в строке и 
        "ширину оператора присваивания...
        if left_width >= 0
            let max_align_col = max([max_align_col, left_width])

            let op_width      = strlen(matchstr(linetext, ASSIGN_OP))
            let max_op_width  = max([max_op_width, op_width+1])
        endif
    endfor

    "Код, необходимый для переформатирования строк таким образом, 
    "чтобы выровнять операторы присваивания...
    let FORMATTER = '\=printf("%-*s%*s", max_align_col, submatch(1),
                \                                    max_op_width,  submatch(2))'

    " Переформатируем строки с операторами присваивания...
    for linenum in range(firstline, lastline)
        let oldline = getline(linenum)
        let newline = substitute(oldline, ASSIGN_LINE, FORMATTER, "")
        call setline(linenum, newline)
    endfor
endfunction

"}}}

" Execute current file
"{{{
nnoremap <Leader><F5> :call ExecuteFile()<CR>

" Will attempt to execute the current file based on the `&filetype`
" You need to manually map the filetypes you use most commonly to the
" correct shell command.
function! ExecuteFile()
  write
  let filetype_to_command = {
  \   'javascript': 'node',
  \   'coffee': 'coffee',
  \   'python': 'python3',
  \   'html': 'open',
  \   'sh': 'sh',
  \   'awk': 'awk'
  \ }
  let cmd = get(filetype_to_command, &filetype, &filetype)
  call RunShellCommand(cmd." %s")
endfunction

" Enter any shell command and have the output appear in a new buffer
" For example, to word count the current file:
"
"   :Shell wc %s
"
" Thanks to: http://vim.wikia.com/wiki/Display_output_of_shell_commands_in_new_window
command! -complete=shellcmd -nargs=+ Shell call RunShellCommand(<q-args>)
function! RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  set wrap
  nnoremap <buffer> <silent> q    :<C-U>bdelete<CR>
  1
endfunction

"}}}

" Show all lines with search pattern.
"{{{
"The following script copies all matching lines to a scratch (temporary) buffer. You can then examine the list, or save it to a file.

" Gather search hits, and display in a new scratch buffer.
function! Gather(pattern)
    if !empty(a:pattern)
        let save_cursor = getpos(".")
        let orig_ft = &ft
        " append search hits to results list
        let results = []
        execute "g/" . a:pattern . "/call add(results, getline('.'))"
        call setpos('.', save_cursor)
        if !empty(results)
            " put list in new scratch buffer
            new
            setlocal buftype=nofile bufhidden=hide noswapfile
            execute "setlocal filetype=".orig_ft
            call append(1, results)
            1d  " delete initial blank line
        endif
    endif
endfunction

" Delete the current buffer if it is a scratch buffer (any changes are lost).
function! CloseScratch()
    if &buftype == "nofile" && &bufhidden == "hide" && !&swapfile
        " this is a scratch buffer
        bdelete
        return 1
    endif
    return 0
endfunction

"A pattern when prompted.
nnoremap <silent> <Leader>g :call Gather(input("Search for: "))<CR>
"To filter on the last search pattern.
nnoremap <silent> <Leader>G :call Gather(@/)<CR>
"Close the scratch buffer listing the search hits.
nnoremap <silent> <Esc> :call CloseScratch()<CR>
"}}}

" }}}

