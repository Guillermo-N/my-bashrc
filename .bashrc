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

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Neofetch welcome print
if [ -f /bin/neofetch ]; then
	neofetch
fi

# Git status prompt
if [ -f /usr/share/doc/git/contrib/completion/git-prompt.sh ]; then
        source /usr/share/doc/git/contrib/completion/git-prompt.sh
fi

# Exercism completion
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
      source ~/.config/exercism/exercism_completion.bash
fi

# User specific aliases and functions
# Alias
alias la="ls -a"
alias ll="ls -l"


# Colors variables
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)

# Stype variables
bold=$(tput bold)

# Reset style to normal
reset=$(tput sgr0)

# Prompt
## Contains: User, hostname, working-directory and git status.
PS1='\[$magenta$bold\][\[$reset\]\[$bold\]\u\[$reset\]\[$magenta$bold\]@\[$reset\]\[$bold\]\h\[$reset\] \[$blue$bold\]\W\[$reset\]\[$magenta$bold\]]\[$reset\]\[$yellow\]$(__git_ps1 " (%s)")\[$reset\]\$ '