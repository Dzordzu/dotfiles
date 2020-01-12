# Use vim bindings
export EDITOR=/bin/vim
bindkey -v

## ESC + v as vim edit
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
 		forward-char
		end-of-line
		vi-forward-char
		vi-end-of-line
		vi-add-eol
      down-history
)
bindkey '^n' autosuggest-accept
