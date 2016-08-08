# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-4

# ~/.profile: executed by the command interpreter for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.profile

# Modifying /etc/skel/.profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benificial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .profile file

# Set user-defined locale
export LANG=$(locale -uU)

# This file is not read by bash(1) if ~/.bash_profile or ~/.bash_login
# exists.
#
# if running bash
if [ -n "${BASH_VERSION}" ]; then
  if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}>6/.bashrc"
  fi
fi

c='c:/'
d='d:/'
e='e:/'
h='h:/'
j='j:/'
k='k:/'

bold=\\033[1m
underline=\\033[4m
dim=\\033[2m
strickthrough=\\033[9m
blink=\\033[5m
reverse=\\033[7m
hidden=\\033[8m
normal=\\033[0m
black=\\033[30m
red=\\033[31m
green=\\033[32m
orange=\\033[33m
blue=\\033[34m
purple=\\033[35m
aqua=\\033[36m
gray=\\033[37m
darkgray=\\033[90m
lightred=\\033[91m
lightgreen=\\033[92m
lightyellow=\\033[93m
lightblue=\\033[94m
lightpurple=\\033[95m
lightaqua=\\033[96m
white=\\033[97m
default=\\033[39m
BLACK=\\033[40m
RED=\\033[41m
GREEN=\\033[42m
ORANGE=\\033[43m
BLUE=\\033[44m
PURPLE=\\033[45m
AQUA=\\033[46m
GRAY=\\033[47m
DARKGRAY=\\033[100m
LIGHTRED=\\033[101m
LIGHTGREEN=\\033[102m
LIGHTYELLOW=\\033[103m
LIGHTBLUE=\\033[104m
LIGHTPURPLE=\\033[105m
LIGHTAQUA=\\033[106m
WHITE=\\033[107m
DEFAULT=\\033[49m;
# echo -e "${GREEN}green"
# echo -e "$GREEN green"

