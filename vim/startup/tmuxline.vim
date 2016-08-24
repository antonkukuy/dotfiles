
"  tmux will replace #X and %X
"  #H    Hostname of local host
"  #h    Hostname of local host without the domain name
"  #F    Current window flag
"  #I    Current window index
"  #S    Session name
"  #W    Current window name
"  #P    unkwon
"  #(shell-command)  First line of the command's output
"  string will be passed through strftime(3) before being used.
"  %d    day
"  %b    mounth
"  %R    short time
"  %a    short name of days
"  %Y    year
"  %D    date format 00/00/00
"  %H    hours
"  %M    minuts
"  %l    maybe hours
"  %r    full time

" in console - date +"%r" or date +"%T" or date +"%m-%d-%Y"
" %FORMAT String    Description
" %%                a literal %
" %a                locale’s abbreviated weekday name (e.g., Sun)
" %A                locale’s full weekday name (e.g., Sunday)
" %b                locale’s abbreviated month name (e.g., Jan)
" %B                locale’s full month name (e.g., January)
" %c                locale’s date and time (e.g., Thu Mar 3 23:05:25 2005)
" %C                century; like %Y, except omit last two digits (e.g., 21)
" %d                day of month (e.g, 01)
" %D                date; same as %m/%d/%y
" %e                day of month, space padded; same as %_d
" %F                full date; same as %Y-%m-%d
" %g                last two digits of year of ISO week number (see %G)
" %G                year of ISO week number (see %V); normally useful only with %V
" %h                same as %b
" %H                hour (00..23)
" %I                hour (01..12)
" %j                day of year (001..366)
" %k                hour ( 0..23)
" %l                hour ( 1..12)
" %m                month (01..12)
" %M                minute (00..59)
" %n                a newline
" %N                nanoseconds (000000000..999999999)
" %p                locale’s equivalent of either AM or PM; blank if not known
" %P                like %p, but lower case
" %r                locale’s 12-hour clock time (e.g., 11:11:04 PM)
" %R                24-hour hour and minute; same as %H:%M
" %s                seconds since 1970-01-01 00:00:00 UTC
" %S                second (00..60)
" %t                a tab
" %T                time; same as %H:%M:%S
" %u                day of week (1..7); 1 is Monday
" %U                week number of year, with Sunday as first day of week (00..53)
" %V                ISO week number, with Monday as first day of week (01..53)
" %w                day of week (0..6); 0 is Sunday
" %W                week number of year, with Monday as first day of week (00..53)
" %x                locale’s date representation (e.g., 12/31/99)
" %X                locale’s time representation (e.g., 23:13:48)
" %y                last two digits of year (00..99)
" %Y                year
" %z                +hhmm numeric timezone (e.g., -0400)
" %:z               +hh:mm numeric timezone (e.g., -04:00)
" %::z              +hh:mm:ss numeric time zone (e.g., -04:00:00)
" %:::z             numeric time zone with : to necessary precision (e.g., -04, +05:30)
" %Z                alphabetic time zone abbreviation (e.g., EDT)


let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : '#(whoami)',
      \'win'  : ['session_name', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : '#(date)',
      \'y'    : '%A',
      \'z'    : ['#H']}

 "   "⚡ #(~/bin/tmux-battery) [✉#(~/bin/imap_check.py)] %H:%M %d-%h-%Y"
"    #(date -u | awk '{print $4}')   " only time
"let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '#H',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '%a',
      \'y'    : '#W %R',
      \'z'    : '#H'}


"let g:tmuxline_theme = 'jellybeans'

"let g:tmuxline_theme = {
    \   'a'    : [ 236, 103 ],
    \   'b'    : [ 253, 239 ],
    \   'c'    : [ 244, 236 ],
    \   'x'    : [ 244, 236 ],
    \   'y'    : [ 253, 239 ],
    \   'z'    : [ 236, 103 ],
    \   'win'  : [ 103, 236 ],
    \   'cwin' : [ 236, 103 ],
    \   'bg'   : [ 244, 236 ],
    \ }
" values represent: [ FG, BG, ATTR ]
"   FG ang BG are color codes
"   ATTR (optional) is a comme-delimited string of one or more of bold, dim, underscore, etc. For details refer to 'message-attr attributes' in tmux man page

let g:tmuxline_powerline_separators = 1

"let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}
