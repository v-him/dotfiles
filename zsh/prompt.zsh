current_dir='%F{white}%30<...<%~ '
subshell_indicator='%F{magenta}%(4L.+ .)' #The 4 might require tweaking, check $SHLVL
background_job_indicator='%(1j.%F{red}%f .)'
symbol='%(?.%F{blue}.%F{red})>%f'
PROMPT="$current_dir$background_job_indicator$subshell_indicator$symbol "

# To add commands to be run before each prompt
autoload -Uz add-zsh-hook

print_new_line() { print }
add-zsh-hook precmd print_new_line

# Git branch
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:git:*' formats '%F{yellow}γ:%f%F{blue}%r%f at %F{magenta}%b%f'
RPROMPT='${vcs_info_msg_0_}'

