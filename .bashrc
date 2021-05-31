source ~/.bash_aliases
#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# (cat ~/.cache/wal/sequences &)
PS1='[\u@\h \W]\$ '
shopt -s autocd
export EDITOR=nvim
export PATH="/home/creator/Android/Sdk/platform-tools:$PATH"
export ANDROID_SDK='/home/creator/Android/Sdk'
export ANDROID_HOME=$ANDROID_SDK
export PATH="/home/creator/.gem/ruby/2.7.0/bin:$PATH"
MOZ_ENABLE_WAYLAND=1
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

. /usr/share/bash-completion/completions/git

#FUNCTIONS
function pacstall {
		echo "$1";
		sudo pacman -S "$1" || yay "$1" && echo "$1" >> ~/configprogress/package_list
}
function pacremove {
		sudo pacman -Rsn "$1" && cat ~/configprogress/package_list | grep -v "$1" > ~/configprogress/package_list
}
