source $BYOBU_PREFIX/share/byobu/profiles/tmux
set -g terminal-overrides "*:kf14=\e[24~:kf15=\e[25~:kf16=\e[26~"
 
bind -n F14 splitw -h
bind -n F15 selectp -L
bind -n F16 selectp -R