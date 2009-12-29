# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Alias definitions:
alias opera='opera -notrayicon -nomail -noargb -nolirc'
alias nethack='telnet nethack.alt.org'
alias pacman='sudo pacman'
alias py='python'
alias ipy='ipython'

extract () {
  7z x "$1"
}

# colorized pacman output:
pacsearch() {
   echo -e "$(pacman -Ss "$@" | sed \
     -e 's#^core/.*#\\033[1;31m&\\033[0;37m#g' \
     -e 's#^extra/.*#\\033[0;32m&\\033[0;37m#g' \
     -e 's#^community/.*#\\033[1;35m&\\033[0;37m#g' \
     -e 's#^.*/.* [0-9].*#\\033[0;36m&\\033[0;37m#g' ) \
     \033[0m"
}

# Colorize things:
alias ls='ls --color=auto'
eval `dircolors -b`
export GREP_COLOR='1;33'
alias grep='grep --color=auto'

export EDITOR='nano'

# Prompt:
PS1='\[\033[1;34m\]\w \[\033[0m\]> '
