# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Override ALT-C for CTRL-E
zle     -N             fzf-cd-widget
bindkey -M emacs '\C-e' fzf-cd-widget
bindkey -M vicmd '\C-e' fzf-cd-widget
bindkey -M viins '\C-e' fzf-cd-widget

export FZF_DEFAULT_OPTS

FZF_DEFAULT_OPTS="
--bind='ctrl-t:toggle-all'
--style=minimal
--info=inline
--color=fg:#ebdbb2
--color=bg:#32302f
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
"
# --color fg:#ebdbb2,bg:#282828,hl:#8ec07c
# --color fg+:#fbf1c7,bg+:#32302f,hl+:#8ec07c
# --color info:#b8bb26
# --color prompt:#458588
# --color spinner:#b16286
# --color pointer:#b16286
# --color marker:#d3869b
# --color header:#665c54

fpath=("$USER_FUNCTIONS/fzf" $fpath)

