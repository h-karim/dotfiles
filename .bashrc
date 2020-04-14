#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)
alias j11='source ~/Scripts/Bash/switch-to-j11.sh'
alias :q=$'echo "you\'re not in vim dumbass"'
alias :wq=$'echo "you\'re not in vim dumbass"'
alias reboot='systemctl reboot'
alias shutdown='systemctl poweroff'
alias ls='ls --color=auto'
alias purge='pacman -Rns $(pacman -Qtdq) '
alias sudo='sudo '
alias installpkg='makepkg -sirc'
alias xlogout='kill -9 -1'
alias pip-update='pip install --upgrade --user '
alias pip-install='pip install --user '
PS1='[\u@\h \W]\$ '
shopt -s autocd
export TERM=xterm-termite
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
#Android studio environment:
export PATH=$PATH:$HOME/.local/bin
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$(yarn global bin):$PATH"
