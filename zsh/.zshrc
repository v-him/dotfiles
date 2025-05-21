source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/prompt.zsh"
autoload "$USER_FUNCTIONS"/*(:t)

# Borrowed scripts
fpath=("$ZDOTDIR/external" $fpath)

# Completion
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
autoload -Uz compinit && compinit -d "$XDG_CACHE_HOME/zsh/.zcompdump"
_comp_options+=(globdots)
source "$ZDOTDIR/external/completion.zsh"

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use nvim for manpages
export MANPAGER='nvim +Man!'

# Vim mode
bindkey -v
export KEYTIMEOUT=1
autoload -Uz cursor_mode; cursor_mode
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Set up fzf key bindings and fuzzy completion
source "$XDG_CONFIG_HOME/fzf/config.zsh"

# Options
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT
setopt INTERACTIVE_COMMENTS
setopt EXTENDED_GLOB
setopt MULTIOS
setopt CORRECT
