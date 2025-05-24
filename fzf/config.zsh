# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Override ALT-C for CTRL-E
zle     -N             fzf-cd-widget
bindkey -M emacs '\C-e' fzf-cd-widget
bindkey -M vicmd '\C-e' fzf-cd-widget
bindkey -M viins '\C-e' fzf-cd-widget

export FZF_DEFAULT_OPTS

# beam_cursor is the string (including double quotes): "\e[6 q"
beam_cursor='"\\e[6 q"'
#beam_cursor_command is the string: --bind='start:execute(echo -ne "\e[6 q")'
beam_cursor_command="$(
	printf "--bind='start:execute(echo -ne %s)'" "$beam_cursor"
)"

FZF_DEFAULT_OPTS="
$beam_cursor_command
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

