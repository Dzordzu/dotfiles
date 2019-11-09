# Run tmux

if ! tmux info &> /dev/null; then
   touch ~/.tmux-started.new-session
   exec tmux
 elif command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
   exec tmux
fi

TMUX_STARTED=~/.tmux-started.new-session
if [[ -f "$TMUX_STARTED" ]]; then
   rm ~/.tmux-started.new-session
   neofetch
fi


export TERM="xterm-256color"
# Start with a fetch
eval $(thefuck --alias)

setxkbmap -layout pl

