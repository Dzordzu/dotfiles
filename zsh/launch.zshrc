# Run tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
  screenfetch
fi

export TERM="xterm-256color"
# Start with a fetch
eval $(thefuck --alias)

setxkbmap -layout pl

