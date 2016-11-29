# User dependent .bashrc file
# . (dot) stands as source command
#PATH+=:/cygdrive/c/home/Anton/bin:/cygdrive/c/Far\ Manager:/cygdrive/c/home/Anton/c_program:/cygdrive/c/home/Anton/.local/mplayer
PATH+=:/cygdrive/c/cygwin64/home/Anton/bin:/cygdrive/c/cygwin64/home/Anton/c_program:/cygdrive/c/cygwin64/home/Anton/.local/mplayer:/cygdrive/c/Python27:/cygdrive/c/'Program Files (x86)'/Google/Chrome/Application:/cygdrive/c/Users/ADMIN/AppData/Roaming/npm:/cygdrive/c/'Program Files'/nodejs

#PATH+=:/home/Anton/bin:/Far\ Manager:/home/Anton/c_program:/home/Anton/.local/mplayer

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# disable freeze terminal after pressing Ctrl-s(without it unfreeze - Ctrl-q)
stty stop ''

# ~/.bash_aliases, instead of adding alias here directly.{{{
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
#}}}

# Source files {{{
source ~/.local/bin/bashmarks.sh
source ~/.shell_promptline.sh
source ~/.bash_bind
source ~/.tmuxinator.bash
#source ~/.profile
#}}}

# VIM {{{
#set -o vi
#bind -m vi-insert '"(" "\C-v()\ei"'
#bind -m vi-insert '"[" "\C-v[]\ei"'
#bind -m vi-insert '"{" "\C-v{}\ei"'
#bind -m vi-insert '"\"" "\C-v\"\C-v\"\ei"'
#bind -m vi-insert '"\047" "\C-v\047\C-v\047\ei"'
#bind -m vi-insert '"\`" "\C-v\`\C-v\`\ei"'
#}}}

# Variables {{{

# translate {{{
export HOME_LANG=en
export TARGET_LANG=ru
export PLAYER='c:/cygwin64/home/Anton/.local/mplayer/mplayer.exe'
#}}}

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# commands that are matched by the !, !!, and !? designators are not blindly executed, but instead filled in on the command line so you can ensure they will do no evil before executing them.
shopt -s histverify
# puts a failed history substitution back on the command line for re-editing
# shopt -s histreedit


# save multi-line commands as one command
# shopt -s cmdhist

# no need to type cd (works for .. but not -, although alias -- -='cd -' fixes it)
# shopt -s autocd 2>/dev/null

# autocorrect minor spelling errors
# shopt -s dirspell 2>/dev/null
# shopt -s cdspell 2>/dev/null

export BROWSER=Chrome
#export LESSCHARSET=koi8-r
#export LANG=ru_RU.utf8

# highlight syntax into less
export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '
export PAGER=less
export MANPAGER="/usr/bin/most -s"
# export MANPAGER="less" # -X option stands -> Don't clear the screen after quitting a manual page

# # Colored man pages
# export LESS_TERMCAP_mb=$'\E[01;31m'
# export LESS_TERMCAP_md=$'\E[01;31m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_se=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[01;44;33m'
# export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[01;32m'


# export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking 
# export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold 
# export LESS_TERMCAP_me=$'\E[0m'           # end mode 
# export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode 
# export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box 
# export LESS_TERMCAP_ue=$'\E[0m'           # end underline 
# export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
# force colours
# force_color_prompt=yes

# use colour prompt
# color_prompt=yes




export EDITOR=vim
export GIT_PS1_SHOWDIRTYSTATE=1
# avoid duplicates..
export HISTCONTROL="ignorespace:erasedups"
# export HISTCONTROL="ignoreboth"

# After each command, append to the history file and reread it (next statement erases .python_history)
# export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export HISTSIZE=40000
export HISTFILESIZE=40000
export HISTIGNORE="&:[bf]g:lct:lct :num:num :key:key :whatis*:whereis*rtr:rtr ::etr :etr:gs:gs :ga .:ga . :tmux:\r:ls:ls :pwd:pwd :ll:ll :cd:cd :cs:cs :la:la :so:so :vi:vi :bashrc:bashrc :trans :trans:..*"
#export HISTTIMEFORMAT='%F %T '
#export LESSCHARSET="windows-1251"
#export LESSCHARSET="utf-8"
#}}}

#bash completion{{{
# enable bash completion in interactive shells
#if [ -f /etc/bash_completion  ]; then
# . /etc/bash_completion
#fi
#==================== OR =========================
# enable bash completion in interactive shells
#if ! shopt -oq posix; then
#      if [ -f /usr/share/bash-completion/bash_completion  ]; then
#        . /usr/share/bash-completion/bash_completion
#      elif [ -f /etc/bash_completion  ]; then
#        . /etc/bash_completion
#      fi
#fi
#}}}

# PS {{{
# PS1="\[$GREEN\]\t\[$RED\]-\[$BLUE\]\u\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$MAGENTA\]\$(__git_ps1)\[$WHITE\]\$ "



#export PS1='\w$(__git_ps1 " (%s)")\$ '
#source ~/.git-prompt.sh

#export PS1="\n\[\033[1;30m\][$$:$PPID - \j:\!\[\033[1;30m\]]\[\033[0;36m\] \T \
#\[\033[1;30m\][\[\033[1;34m\]\u@\H\[\033[1;30m\]:\[\033[0;37m\]${SSH_TTY:-o} \
#\[\033[0;32m\]+${SHLVL}\[\033[1;30m\]] \[\033[1;37m\]\w\[\033[0;37m\]\[\033[1;34m\]\$(__git_ps1 \" (%s)\") \[\033[0;37m\] \n\$ "

#source ~/bash-prompt

# function color_my_prompt {
#     local __user_and_host="\[\033[01;32m\]\u@\h"
#     local __cur_location="\[\033[01;34m\]\w"
#     local __git_branch_color="\[\033[31m\]"
#     #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
#     local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
#     local __prompt_tail="\[\033[35m\]$"
#     local __last_color="\[\033[00m\]"
#     export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
# }
#}}}

# Function {{{
# color_my_prompt
f(){
    ls -lha $*
}

helps(){
    $1 --help| less
}

mans(){
    man $1| less
}
helpv(){
    $1 --help| vless
}

manv(){
    man $1| vless
}

cmdfu() { curl "http://www.commandlinefu.com/commands/matching/$(echo "$@" \
        | sed 's/ /-/g')/$(echo -n $@ | base64)/plaintext" ;}

# color the manpages
# tutorial video: http://www.youtube.com/watch?v=9BFaLAa428k
# https://wiki.archlinux.org/index.php/Man_page#Colored_man_pages
#man() {
#    env LESS_TERMCAP_mb=$'\E[01;31m' \
#    LESS_TERMCAP_md=$'\E[01;31m' \
#    LESS_TERMCAP_me=$'\E[0m' \
#    LESS_TERMCAP_se=$'\E[0m' \
#    LESS_TERMCAP_so=$'\E[01;44;33m' \
#    LESS_TERMCAP_ue=$'\E[0m' \
#    LESS_TERMCAP_us=$'\E[01;32m' \
#    man "$@"
#}

c() {
    open ~/language_C_help/Help/bcb6.hlp
}

#}}}

# Is TMUX running? {{{
# if tmux info &> /dev/null; then 
if [ -z "$TMUX" ]; then 
    tmux
    # :
    # echo -e "\033[0;32m \t\t\t\t\t\t\tHELLO MY FRIEND!!!\033[m"
else
    # echo not running
    # tmux attach-session -t "$OSTYPE" || tmux new-session -s "$OSTYPE"
    # tmux
    :
fi
#}}}
