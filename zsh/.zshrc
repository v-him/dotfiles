source "$XDG_CONFIG_HOME/zsh/aliases.zsh"

autoload -U compinit; compinit

_comp_options+=(globdots)

source "$ZDOTDIR/external/completion.zsh"

fpath=($ZDOTDIR/external $fpath)

autoload -Uz prompt_purification_setup; prompt_purification_setup

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Use nvim for manpages
export MANPAGER='nvim +Man!'

bindkey -v
export KEYTIMEOUT=1

autoload -Uz cursor_mode; cursor_mode

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
