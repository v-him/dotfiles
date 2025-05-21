# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Override ALT-C for CTRL-E
zle     -N             fzf-cd-widget
bindkey -M emacs '\C-e' fzf-cd-widget
bindkey -M vicmd '\C-e' fzf-cd-widget
bindkey -M viins '\C-e' fzf-cd-widget
