export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

export EDITOR=nvim
export VISUAL=nvim
export MANPAGER='nvim +Man! +set laststatus=0 +set cmdheight=0'

export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export USER_FUNCTIONS=$XDG_DATA_HOME/zsh/functions
export USER_SCRIPTS=$HOME/.local/bin

typeset -U path PATH
for dir in $USER_SCRIPTS/**/; path=($dir $path)

typeset -U fpath FPATH
for dir in $USER_FUNCTIONS/**/; fpath=($dir $fpath)

fpath=($ZDOTDIR/external $fpath) # borrowed scripts

export HISTFILE=$XDG_DATA_HOME/zsh/.zhistory
export HISTSIZE=10000
export SAVEHIST=10000
export LESSHISTFILE=$XDG_DATA_HOME/lesshst
export DIRSTACKSIZE=10

export RIPGREP_CONFIG_PATH=$XDG_CONFIG_HOME/rg/conf

export DOTFILES=$HOME/dotfiles
