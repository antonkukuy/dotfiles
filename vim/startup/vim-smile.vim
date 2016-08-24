let g:slime_target = "tmux"



"If you want vim-slime to prefill the prompt answers, you can set a default configuration:
 let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}


" Выделяем интересующий нас кусочек кода через vim visual mode и <C-c><C-c>. Если ничего не выделять, то <C-c><C-c> отправит в REPL абзац (блок текста без пустых строк) под курсором. 
"
" При первом запуске команды за сессию vim-slime спрашивает имя tmux сокета и в какую `сессию-tmux: окно, панель` посылать текст. На первый вопрос отвечаем `default`, на второй `:0,1`. Enter! И код появляется в REPL.
"
" Диалог настройки можно вызвать самостоятельно через `:SlimeConfig`. Можно также посылать код в другое окно терминала, что может быть удобно для людей, работающих с несколькими мониторами. Запустите второе окно с tmux, откройте свою REPL и в первом окне с vim выполните:
"
" :SlimeConfig
" default
" 2:0,0
