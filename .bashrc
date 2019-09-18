#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

alias ls='ls --color=auto'
alias purge='pacman -Rns $(pacman -Qtdq) '
alias sudo='sudo '
alias installpkg='makepkg -sirc'
alias xlogout='kill -9 -1'
alias pip-update='pip install --upgrade --user '
alias pip-install='pip install -U '
PS1='[\u@\h \W]\$ '
shopt -s autocd
export TERM=termite
export EDITOR=vim

# Color files by types
set colored-stats On
# Append char to indicate type
set visible-stats On
# Mark symlinked directories
set mark-symlinked-directories On
# Color the common prefix
set colored-completion-prefix On
# Color the common prefix in menu-complete
set menu-complete-display-prefix On

set show-all-if-ambiguous on
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
