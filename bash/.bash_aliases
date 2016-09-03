# Command ls {{{

# Enable syntax-highlighting in less.
export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "

#alias ls='ls --color=auto'
 alias lsh='ls -hF --color=tty'                 # classify files in colour
 alias dir='ls -hF --color=tty --format=vertical'
 alias vdir='ls -hF --color=tty --format=long'
 alias ll='ls -slihF --color=tty'                              # long list
 alias la='ls -hFA --color=tty'                              # all but . and ..
#alias l='ls -CF'                              #
#}}}

# Node.js {{{
#alias node='/cygdrive/c/Program\ Files/nodejs/node.exe'
#alias npm='/c/Users/ADMIN/AppData/Roaming/npm/node_modules/npm/bin/npm'
#alias npm='/cygdrive/c/Program\ Files/nodejs/npm'
#}}}

# Translate {{{
alias trans='trans -play -speak'
alias itr='trans {en=ru} -play -speak -shell'
alias aitr='trans -play -speak -shell'
alias mtr='trans -M'
alias htr='trans -H|less'
alias brt='trans -play -speak -bing'
alias trbrief='trans -play -speak -brief'
#}}}

# Open by VIM{{{
alias balias='vim ~/dotfiles/bash/.bash_aliases'
alias bhistory='vim ~/dotfiles/bash/.bash_history'
alias inputrc='vim ~/dotfiles/bash/.inputrc'
alias bashrc='vim ~/dotfiles/bash/.bashrc'
alias vimacs='vim ~/dotfiles/vim/startup/vimacs.vim'
alias vimrc='vim ~/dotfiles/vim/vimrc'
alias vundle='vim ~/dotfiles/vim/startup/vundle.vim'
alias vplug='vim ~/dotfiles/vim/startup/vim-plug.vim'
alias mapping='vim ~/dotfiles/vim/startup/mappings.vim'
alias setting='vim ~/dotfiles/vim/startup/settings.vim'
alias cvimrc='vim j:/GOOGLE/ext_settings/.cvimrc'
alias tmuxconf='vim c:/cygwin64/home/Anton/.tmux.conf'
#}}}

# Change directory{{{
alias home='cd c:/Users/ADMIN/'
alias cdir='cd ~/c_program'
alias ..='cd ..'
alias ..2='cd ../..'
alias key='cd d:/KEYBOARD/VimKee4/'
alias num='cd d:/KEYBOARD/NumpadMouse/'
alias ahk='cd d:/AutoHotKey/'

    # Switch disk {{{
    alias diskc='cd c:/'
    alias diskd='cd d:/'
    alias diske='cd e:/'
    alias diskh='cd h:/'
    alias diskj='cd j:/'
    alias diskk='cd k:/'
    #}}}

#}}}

# Various command {{{
alias rm='rm -i'
alias rmd='rm -id'
alias open='xdg-open'
alias chrome='/usr/bin/google-chrome-unstable'
alias vless=/usr/share/vim/vim74/macros/less.sh
alias grep='grep --color=auto'
alias so='source $HOME/dotfiles/bash/.bashrc'
alias sotmux='tmux source-file c:/cygwin64/home/Anton/.tmux.conf'
alias tmux='tmux attach || tmux new' 
alias cs=clear
alias weather='sh c:/cygwin64/home/Anton/scripts/weather/openweathermap.sh'
#}}}

# TMUX {{{
#alias tnews='tnew_session'
#alias tls='tmux list-session'
#alias tlw='tmux list-window'
#alias tsw='tmux switch -t '
#alias tlc='tmux list-command'
#alias tat='tmux attach -t'
#alias trs='tmux rename-session -t'

# Killing
#alias tks='tmux kill-session -t'
#}}}

#xclip - copy/paste {{{
alias pbcopy='xclip -selection clipboard'   # copy to clipboard, ctrl+c, ctrl+shift+c
alias pbpaste='xclip -selection clipboard -o'   # paste from clipboard, ctrl+v, ctrl+shift+v
alias pbselect='xclip -selection primary -o'    # paste from highlight, middle click, shift+insert
#}}}

# DISPLAY {{{
alias dis0='DISPLAY=:0'
alias dis1='DISPLAY=:1'
alias dis2='DISPLAY=:2'
alias dis3='DISPLAY=:3'
alias dis4='DISPLAY=:4'
alias dis5='DISPLAY=:5'
alias dis6='DISPLAY=:6'
alias dis7='DISPLAY=:7'
alias dis8='DISPLAY=:8'
alias dis9='DISPLAY=:9'
# }}}

# git {{{
alias gld='git log --oneline --decorate --graph --all'
alias ga='git add'
alias gdw='git diff --word-diff'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit'
alias gco='git checkout'
alias gi='git init'
alias gl='git log'
alias gs='git status'
alias gh='git hist'
#}}}

# Junk {{{
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias grep='grep --color'                     # show differences in colour
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
#}}}

# Chrome {{{

# check and delete strings with update_url info within manifest.json

# find executes the program once per file.
 alias chupdate='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json -exec grep -l '\''"update_url":.*[,]$'\'' {} \; '
# alias chupdate_comma='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json -exec grep -l '\''"update_url":.*[^,]$'\'' {} \; '
# alias chupdatedelete='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json -exec grep -l '\''"update_url":.*[,]$'\'' {} \; -exec sed -i.backup '\''/update_url/ d'\'' {} \;'
#alias chdeletebackup='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json.backup -ok find {} -delete \;'
 alias chdeletebackup='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json.backup -delete'
#alias chdeletebackup='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json.backup -exec rm -i {} \;'


# xargs can handle several files with each process. Also it may has problems with files that contain embedded spaces.
 alias chupdate='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json -print0|xargs -0 grep -l -Z '\''"update_url":.*[,]$'\''| xargs -0 grep -Z '\''"name"'\''  | cut -d'\''/'\'' -f10,11,12,13'
alias chupdate_comma='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json -print0|xargs -0 grep -l -Z '\''"update_url":.*[^,]$'\'
# alias chupdatedelete='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json -print0|xargs -0 grep -l -Z '\''"update_url":.*[,]$'\'' | xargs -0 sed -i.backup '\''/update/ d'\'

 alias chupdatedelete='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json -print0|xargs -0 grep -l -Z '\''"update_url":.*[,]$'\'' | xargs -0 sed -i '\''/update/ d'\'
# alias chdeletebackup='find c:/Users/ADMIN/AppData/Local/Google/Chrome/User\ Data/Default/Extensions/ -name manifest.json.backup -print0 | xargs -0 -p rm'

#}}}
