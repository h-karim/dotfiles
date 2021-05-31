
alias expo='~/.config/yarn/global/node_modules/expo-cli/bin/expo.js'
alias rec='ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i $DISPLAY -f pulse -ac 2 -i 0 -c:v libx264 -preset ultrafast -c:a aac '
alias j13='source ~/Scripts/Bash/switch-to-j13.sh'
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
alias vim='nvim '