export HISTFILE=~/.histfile
export HISTSIZE=3000
export SAVEHIST=2500

# Reversed history search
bindkey '^K' history-incremental-search-backward

export HSTR_CONFIG=hicolor,blacklist
export HH_CONFIG=hicolor,blacklist         # get more colors
export HISTCONTROL=ignorespace   # leading space hides commands from history
# export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"   # mem/file sync

hh-start-search() {
    TMP=$BUFFER
    zle push-input
    BUFFER="hh $TMP"
    zle accept-line
}
zle -N hh-start-search
bindkey "\C-r" hh-start-search     # bind hh to Ctrl-r (for Vi mode check doc)
