# editor/grep options
export EDITOR='vim'

# enable color / set editor
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM="xterm-256color"

# Prompt colors
c_user="\[\e[0;33m\]"
c_path="\[\e[0;35m\]"
c_time="\[\e[1;31m\]"
c_reset="\[\e[00m\]"

# Setup git-prompt.sh
if [ -f ~/.dotfiles/git-prompt.sh ]; then
  source ~/.dotfiles/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=1
  export GIT_PS1_SHOWSTASHSTATE=1
  export GIT_PS1_SHOWUNTRACKEDFILES=1
  export GIT_PS1_SHOWCOLORHINTS=1
  export GIT_PS1_SHOWUPSTREAM="auto git"
  export GIT_DESCRIBE_STYLE="branch"
  PROMPT_COMMAND="__git_ps1 '' '${c_user}\u@\h:${c_path}\w\n${c_time}[\t]${c_reset}$ ' ' (%s $(git rev-parse --short HEAD 2>/dev/null)) '"
else
  export PS1='\[\033[01;37m\]\u@\@h\[\033[01;34m\] \W$ '
fi

export PATH=/usr/local/bin:/usr/bin:$PATH
