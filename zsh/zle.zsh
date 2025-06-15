# Completion
zmodload zsh/complist
autoload -Uz compinit && compinit -d "$XDG_CACHE_HOME/zsh/.zcompdump"
_comp_options+=(globdots)

source "$ZDOTDIR/external/completion.zsh"

# Vim mode
bindkey -v

zle-keymap-select() {
	typeset block_cursor_sequence='\e[2 q'
	typeset beam_cursor_sequence='\e[6 q'
	case $KEYMAP in
		vicmd) print -n $block_cursor_sequence
			;;
		viins|main) print -n $beam_cursor_sequence
			;;
	esac
}

zle-line-init() {
	typeset beam_cursor_sequence='\e[6 q'
	print -n $beam_cursor_sequence
}

autoload -Uz edit-command-line

zle -N zle-keymap-select
zle -N zle-line-init
zle -N edit-command-line

# Custom keybindings

# Remove all keybindings in insert mode that start with escape (except escape itself)
# Notably, this disables arrow keys
bindkey -rpM viins "^["
bindkey -rpM menuselect "^["

bindkey "^B" push-line-or-edit
bindkey "^I" menu-expand-or-complete
bindkey "^J" down-history
bindkey "^K" up-history
bindkey "^N" menu-complete
bindkey "^O" undo
bindkey "^P" reverse-menu-complete
bindkey "^U" kill-whole-line
bindkey "^Y" accept-and-infer-next-history

bindkey -M vicmd v edit-command-line
bindkey -M vicmd "^J" down-history
bindkey -M vicmd "^K" up-history

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
