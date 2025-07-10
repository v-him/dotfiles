# Vim mode
bindkey -v

function block-cursor {
	typeset block_cursor_sequence='\e[2 q'
	print -n $block_cursor_sequence
}

function beam-cursor {
	typeset beam_cursor_sequence='\e[6 q'
	print -n $beam_cursor_sequence
}

function zle-keymap-select {
	case $KEYMAP in
		vicmd) block-cursor
			;;
		viins|main) beam-cursor
			;;
	esac
}

autoload -Uz edit-command-line

zle -N zle-keymap-select
zle -N zle-line-init beam-cursor
zle -N edit-command-line

# Custom keybindings

export KEYTIMEOUT=1

bindkey "^B" push-line-or-edit
bindkey "^E" fzf-cd-widget
bindkey "^I" expand-word
bindkey "^J" down-history
bindkey "^K" up-history
bindkey "^N" menu-complete
bindkey "^P" reverse-menu-complete
bindkey "^U" kill-buffer
bindkey "^Y" accept-and-infer-next-history
bindkey '^?' backward-delete-char

bindkey -M vicmd "^J" down-history
bindkey -M vicmd "^K" up-history
bindkey -M vicmd '^E' fzf-cd-widget
bindkey -M vicmd '^[' zle-keymap-select

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
