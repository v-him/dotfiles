# Options
setopt ALWAYS_TO_END
setopt AUTO_PUSHD
setopt BRACE_CCL
setopt COMPLETE_IN_WORD
setopt CORRECT
setopt EXTENDED_GLOB
setopt GLOB_DOTS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_SUBST_PATTERN
setopt INC_APPEND_HISTORY
setopt INTERACTIVE_COMMENTS
setopt LIST_PACKED
setopt LIST_ROWS_FIRST
setopt PATH_DIRS
setopt PROMPT_SUBST
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT
setopt RC_QUOTES
setopt RM_STAR_SILENT
setopt SHARE_HISTORY

unsetopt GLOBAL_EXPORT
unsetopt CLOBBER

# Other scripts
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/prompt.zsh
source $XDG_CONFIG_HOME/fzf/config.zsh
source $ZDOTDIR/zle.zsh # Source after fzf to override keymaps

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NULLCMD=bat
export READNULLCMD=

# Keep at the end, after all fpath modifications (if any)
autoload $USER_FUNCTIONS/**/*(.:t)
