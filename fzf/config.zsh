# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Override ALT-C for CTRL-E
bindkey -M emacs '^E' fzf-cd-widget
bindkey -M vicmd '^E' fzf-cd-widget
bindkey -M viins '^E' fzf-cd-widget

export FZF_DEFAULT_OPTS

FZF_DEFAULT_OPTS='
--bind=''start:execute(print -n "\e[6 q")''
--bind=ctrl-t:toggle-all
--bind=ctrl-p:toggle-preview
--style=minimal
--info=inline
--color=fg:#ebdbb2
--color=bg:#282828
--color=hl:#928374
--color=fg+:#ebdbb2
--color=bg+:#3c3836
--color=hl+:#fb4934
--color=spinner:#fb4934
--color=header:#928374
--color=info:#8ec07c
--color=pointer:#fb4934
--color=marker:#fb4934
--color=prompt:#fb4934
'

