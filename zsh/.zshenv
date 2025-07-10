setopt ALL_EXPORT

XDG_CONFIG_HOME=$HOME/.config
XDG_DATA_HOME=$HOME/.local/share
XDG_STATE_HOME=$HOME/.local/state
XDG_CACHE_HOME=$HOME/.cache

EDITOR=nvim
VISUAL=$EDITOR
MANPAGER='nvim +Man! +"set laststatus=0" +"set cmdheight=0"'

ZDOTDIR=$XDG_CONFIG_HOME/zsh
USER_FUNCTIONS=$XDG_DATA_HOME/zsh/functions
USER_SCRIPTS=$HOME/.local/bin

HISTFILE=$XDG_DATA_HOME/zsh/.zhistory
HISTSIZE=20000
SAVEHIST=10000
LESSHISTFILE=$XDG_DATA_HOME/lesshst
DIRSTACKSIZE=10
CORRECT_IGNORE='_*'
LISTMAX=50
ZLE_RPROMPT_INDENT=0

RIPGREP_CONFIG_PATH=$XDG_CONFIG_HOME/rg/conf

DOTFILES=$HOME/dotfiles

unsetopt ALL_EXPORT

typeset -U path PATH
for dir in $USER_SCRIPTS/**/; path=($dir $path)

typeset -U fpath FPATH
for dir in $USER_FUNCTIONS/**/; fpath=($dir $fpath)

fpath=($ZDOTDIR/external $fpath) # borrowed scripts
path=(/usr/local/go/bin $XDG_DATA_HOME/go/bin $path)
