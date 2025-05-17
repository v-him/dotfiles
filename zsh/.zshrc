# Aliases
source "$XDG_CONFIG_HOME/zsh/aliases.zsh"

# Completion
autoload -U compinit; compinit -d "$XDG_CACHE_HOME/zsh/.zcompdump"
_comp_options+=(globdots)
source "$ZDOTDIR/external/completion.zsh"

# Prompt
fpath=($ZDOTDIR/external $fpath)
autoload -Uz prompt_purification_setup; prompt_purification_setup

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use nvim for manpages
export MANPAGER='nvim +Man!'

# Vim keybindings
bindkey -v
export KEYTIMEOUT=1
autoload -Uz cursor_mode; cursor_mode
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Set up fzf key bindings and fuzzy completion
FZF_ALT_C_COMMAND=
FZF_CTRL_T_COMMAND=
source <(fzf --zsh)
[ -f "$XDG_CONFIG_HOME/fzf/fzfrc" ] && source "$XDG_CONFIG_HOME/fzf/fzfrc"

setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

