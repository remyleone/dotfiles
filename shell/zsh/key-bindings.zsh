# key-bindings.zsh

bindkey -v
bindkey '\ew' kill-region
bindkey -s '\el' "ls\n"
bindkey -s '\e.' "..\n"
bindkey '^r' history-incremental-search-backward
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey ' ' magic-space    # also do history expansion on space
bindkey "^[Oc" emacs-forward-word
bindkey "^[Od" emacs-backward-word
