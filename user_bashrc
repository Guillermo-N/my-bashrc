# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [ -f /bin/neofetch ]; then
	neofetch
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#PS1="\e[1;32m[\e[0m\u\e[1;32m@\e[0m\h \e[0;33m\W\e[0m\e[1;32m]\e[0m\\$ "

source /usr/share/doc/git/contrib/completion/git-prompt.sh

alias python ="python3.9"

green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
bold=$(tput bold)
reset=$(tput sgr0)
#PS1="\e[1;32m[\e[0m\u\e[1;32m@\e[0m\h \e[0;33m\W\e[0m\e[1;32m]\e[0m\\$ "
PS1='\[$magenta$bold\][\[$reset\]\[$bold\]\u\[$reset\]\[$magenta$bold\]@\[$reset\]\[$bold\]\h\[$reset\] \[$blue$bold\]\W\[$reset\]\[$magenta$bold\]]\[$reset\]\[$yellow\]$(__git_ps1 " (%s)")\[$reset\]\$ '
#PS1="\[$green$bold\]\h\[$reset\]:\[$blue$bold\]\w\[$reset\]\$ "
