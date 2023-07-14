#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Powerline Configuration
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ];
then
   powerline-daemon -q
   POWERLINE_BASH_CONTINUATION=1
   POWERLINE_BASH_SELECT=1
   source /usr/share/powerline/bindings/bash/powerline.sh
   # source /usr/lib/python3.11/site-packages/powerline/bindings/bash/powerline.sh
fi

alias ls='ls --color=auto'
export EDITOR=/usr/bin/vim
export PATH=~/.local/share/:~/.local/bin:$PATH
PS1='[\u@\h \W]\$ '
