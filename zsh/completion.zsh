# Completion
zmodload zsh/complist
autoload -Uz compinit && compinit -d "$XDG_CACHE_HOME/zsh/.zcompdump"
_comp_options+=(globdots)

source "$ZDOTDIR/external/completion.zsh"

