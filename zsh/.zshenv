export XDG_CONFIG_HOME="${HOME%/}/.config"
export XDG_DATA_HOME="${HOME%/}/.local/share"
export XDG_STATE_HOME="${HOME%/}/.local/state"
export XDG_CACHE_HOME="${HOME%/}/.cache"

export EDITOR="nvim"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export USER_FUNCTIONS="$XDG_DATA_HOME/zsh/functions"

typeset -U path PATH
path=("${HOME%/}/.local/bin" $path)

typeset -U fpath FPATH
fpath=($USER_FUNCTIONS $fpath)

export HISTFILE="$XDG_DATA_HOME/zsh/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
export LESSHISTFILE="$XDG_DATA_HOME/lesshst"

export DOTFILES="${HOME%/}/dotfiles"
