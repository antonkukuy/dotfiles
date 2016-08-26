call plug#begin('~/dotfiles/vim/bundle')
"call plug#begin('~/.vim/bundle')

" Make sure you use single quotes

Plug '~/.vim/bundle/vimacs-0.93'
"{{{
let g:VM_SingleEscToNormal = 0
"let g:VM_UnixConsoleRemapEsc = 1
"}}}

Plug 'mattn/emmet-vim' 
" emmet-vim {{{

let g:user_emmet_leader_key='<C-Z>'
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.vim/snippets_emmet.json')), "\n"))

"}}}

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'SirVer/ultisnips', { 'on': [] } 
" ultisnips {{{

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsExpandTrigger="<s-tab>"
"let g:UltiSnipsExpandTrigger="<s-tab>"
"let g:UltiSnipsSnippetDirectories=["~/.vim/mycoolsnippets"]
 let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/mycoolsnippets', "UltiSnips"]
"
" If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"">"

" let g:UltiSnipsSnippetsDir = '~/.vim/plugged/vim-snippets/UltiSnips'
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
  let g:UltiSnipsListSnippets="<c-l>"

  inoremap <silent> <S-tab> <C-r>=LoadUltiSnips()<cr>
" inoremap <silent> <A-t> <C-r>=LoadUltiSnips()<cr>

  " This function only runs when UltiSnips is not loaded
  function! LoadUltiSnips()
    let l:curpos = getcurpos()
    execute plug#load('ultisnips')
    call cursor(l:curpos[1], l:curpos[2])
    call UltiSnips#ExpandSnippet()
    return ""
  endfunction

" Load on nothing
"Plug 'SirVer/ultisnips', { 'on': [] }
"Plug 'Valloric/YouCompleteMe', { 'on': [] }

"augroup load_us_ycm
"  autocmd!
"  autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
"                     \| call youcompleteme#Enable() | autocmd! load_us_ycm
"augroup END

"}}}

Plug 'vim-scripts/Auto-Pairs' 
" Auto-Pairs {{{

"let g:AutoPairsFlyMode = 1 
let g:AutoPairsShortcutBackInsert = '<A-S-b>'
"let g:AutoPairsShortcutBackInsert = '<>'
let g:AutoPairsShortcutFastWrap = '<A-S-f>'
" System Shortcuts:
"     <CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
"     <BS>  : Delete brackets in pair
"     <M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
"     <M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
"     <M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
"     <M-b> : BackInsert (g:AutoPairsShortcutBackInsert)
" 
" If <M-p> <M-e> or <M-n> conflict with another keys or want to bind to another keys, add
" 
"     let g:AutoPairsShortcutToggle = '<another key>'
" 
" to .vimrc, if the key is empty string '', then the shortcut will be disabled.
"}}}

Plug 'ron89/thesaurus_query.vim' 
" thesaurus_query.vim {{{

"default setting g:tq_language='en'
"g:tq_language=['en','ru', 'de']
"If you haven't connection
"let g:tq_mthesaur_file="~/.vim/mthesaur.txt"
" }}}

"Plug 'scrooloose/nerdtree' 
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" nerdtree {{{

nmap <TAB><TAB> :NERDTreeToggle<cr>
"nmap <TAB> :NERDTreeToggle<cr>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')

autocmd VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"}}}

Plug 'Shougo/neocomplete.vim' 
" neocomplete.vim {{{

"}}}

Plug 'tpope/vim-surround' 
" vim-surround {{{
" {visual}S!
autocmd FileType html let b:surround_33 = "<!-- \r -->"
" {visual}Sc
let g:surround_99 = "/* \r */"
" {visual}S*
"let g:surround_42 = "/* \r */"
" {visual}Sf
"let g:surround_102 = "\"{{{ \r \"}}}"
autocmd FileType autohotkey let b:surround_102 = ";{{{ \r ;}}}"
autocmd FileType vim let b:surround_102 = "\"{{{ \r \"}}}"
autocmd FileType sh let b:surround_102 = "#{{{ \r #}}}"
"}}}

"Plug 'ternjs/tern_for_vim', { 'for': 'javascript'  }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': 'javascript' }
" tern_for_vim {{{

" KEYS (default){{{
 " ;tD  :TernDoc<cr>     " documentation under cursor
 " ;tb  :TernDocBrowse<cr>     " browse documentation
 " ;tt  :TernType<cr>     " type hints
 " ;td  :TernDef<cr>     " jump to definition
 " ;tpd  :TernDefPreview<cr>     " jump to definition inside preview
 " ;tsd  :TernDefSplit<cr>     " definition in new split
 " ;ttd  :TernDefTab<cr>     " definition in new tab
 " ;tr  :TernRefs<cr>     " all references under cursor
 " ;tR  :TernRename<cr>     " rename variable
"}}}

if exists('g:plugs["tern_for_vim"]')
    autocmd FileType javascript setlocal omnifunc=tern#Complete
    let tern#command = ["node", "c:/cygwin64/home/Anton/dotfiles/vim/bundle/tern_for_vim/node_modules/tern/bin/tern", '--no-port-file']
    "let tern#is_show_argument_hints_enabled = 1
    let g:tern_show_signature_in_pum = 1
    "let g:tern_show_argument_hints='on_move' 
    "let g:tern_show_argument_hints='on_hold' 
    let g:tern_map_keys = 1
    let g:tern_map_prefix=';'
else
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

endif


 autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

 " omnifuncs
"augroup omnifuncs
"  autocmd!
 " autocmd FileType javascript setlocal omnifunc=tern#Complete
 " autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
 " autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
 " autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
 " autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"augroup end

"}}}

Plug 'ctrlpvim/ctrlp.vim'
"ctrlp.vim {{{
let mapleader = ","    "Leader
let g:ctrlp_show_hidden = 1

"let g:ctrlp_show_hidden = 1
"nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor

"unarrow the list down with a word under cursor
"nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" удобное управление для CtrlP
map <leader>c :CtrlP<CR>
map <leader>v :CtrlPBuffer<CR>
map <leader>b :CtrlPBufTag<CR>
map <leader>cb :CtrlPBookmarkDir<CR>
map <leader>cba :CtrlPBookmarkDirAdd<CR>

"}}}

"Plug 'justmao945/vim-clang'
" vim-clang {{{
"Close preview and diagnostics window for current buffer.
map <silent> <Leader>cl <Esc>:ClangClosePreviewDiagWindow<CR>
"map <silent> <Leader>cb <C-w>j:q!<CR>
"map <silent> <Leader>ct <C-w>k:q!<CR>
" let g:clang_verbose_pmenu = 1
" disable auto completion for vim-clang
"       let g:clang_auto = 0
        " default 'longest' can not work with neocomplete
"        let g:clang_c_completeopt = 'menuone,preview'
"        let g:clang_cpp_completeopt = 'menuone,preview'

        " use neocomplete
        " input patterns
"        if !exists('g:neocomplete#force_omni_input_patterns')
"          let g:neocomplete#force_omni_input_patterns = {}
"        endif

        " for c and c++
"        let g:neocomplete#force_omni_input_patterns.c =
"              \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
"        let g:neocomplete#force_omni_input_patterns.cpp =
"              \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
" }}}

Plug 'easymotion/vim-easymotion'
"EasyMotion {{{

" классное перемещение в любую точку по одному или двум символам
nmap <Leader>f <Plug>(easymotion-s)
nmap <Leader>d <Plug>(easymotion-s2)
" настройка удобного перемещения по строкам
nmap <Leader>l <Plug>(easymotion-lineforward)
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
nmap <Leader>h <Plug>(easymotion-linebackward)

"}}}

"Plug 'Shougo/neosnippet.vim'
" Neosnippet.vim {{{
" Enable snipMate compatibility feature.
"let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
"let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" }}}

"Plug 'severin-lemaignan/vim-minimap'
"let g:minimap_highlight='Visual'


Plug 'rking/ag.vim'   "SEARCH
"{{{
"the_silver_searcher is needed
" https://github.com/ggreer/the_silver_searcher

nnoremap \ :Ag<SPACE>
let g:ag_working_path_mode = 'r'
"}}}
Plug 'Chun-Yang/vim-action-ag'    "SEARCH
"{{{
" use * to search current word in normal mode
nmap * <Plug>AgActionWord
" use * to search selected text in visual mode
vmap * <Plug>AgActionVisual
"}}}

Plug 'tpope/vim-fugitive'
"{{{
"Auto-clean fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

"Go up a level to the parent directory
autocmd User fugitive 
            \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
            \   nnoremap <buffer> .. :edit %:h<CR> |
            \ endif
"}}}

Plug 'airblade/vim-gitgutter'
"{{{
set updatetime=2
let g:gitgutter_sign_removed = '✗'
"let g:gitgutter_sign_added = 'xx'
"let g:gitgutter_sign_modified = 'yy'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '✗'
"}}}

Plug 'vim-multiple-cursors'
"{{{
nnoremap ;f :<c-u>call multiple_cursors#new('n')<cr>
nnoremap ;v :<c-u>call multiple_cursors#new('v')<cr>
"}}}

Plug 'tpope/vim-unimpaired'
Plug 'tomtom/tcomment_vim'
Plug 'terryma/vim-expand-region'
Plug 'junegunn/vim-plug'
Plug 'Konfekt/FastFold'
Plug 'tpope/vim-obsession'
Plug 'junegunn/vader.vim' 
Plug 'bling/vim-airline'   " fugitive display git branches 
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'
"Plug 'edkolev/tmuxline.vim'
Plug 'tmux-plugins/vim-tmux'      " for syntax and a few feachers for .tmux.conf
"Plug 'edkolev/promptline.vim'
Plug 'jpalardy/vim-slime'
"Plug 'itchyny/calendar.vim'
"Plug 'kien/ctrlp.vim_reserve'
"Plug 'cstrahan/vim-eclim'   conflict with Gpush(fugitive)
"Plug 'ryanoasis/vim-devicons'


"Plug 'ervandew/supertab'
"Plug 'Rip-Rip/clang_complete'
"Plug 'beloglazov/vim-online-thesaurus'
"Plug 'valloric/youcompleteme'
"let g:ycm_min_num_of_chars_for_completion = 1
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'scrooloose/nerdtree'
"Plug 'VundleVim/Vundle.vim'


" Add plugins to &runtimepath
call plug#end()
