# Keep at the start, before any option changes
autoload $USER_FUNCTIONS/**/*(.:t)

source $ZDOTDIR/options.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/prompt.zsh
source $ZDOTDIR/completion.zsh
source $XDG_CONFIG_HOME/fzf/config.zsh
source $ZDOTDIR/zle.zsh # Source after fzf to override keymaps
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

NULLCMD=bat
READNULLCMD=
cdpath+=( $HOME )
