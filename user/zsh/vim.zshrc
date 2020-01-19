# Use vim bindings
export EDITOR=/bin/vim
bindkey -v

## ESC + v as vim edit
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line


function my-partial-accept {
   CURSOR+=1
}

zle -N my-partial-accept
bindkey -v '^p' my-partial-accept


ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
 		forward-char
		end-of-line
		vi-forward-char
		vi-end-of-line
		vi-add-eol
      down-history
)
bindkey '^n' autosuggest-accept


ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=(
      my-partial-accept
)

