# Git
alias g='git'
alias ga='git add'
alias gf='git fetch'
alias gs='git status -s'
alias gl='git pull'
alias glo='git log'
alias gb='git branch'
alias gd='git diff'
alias gdt='git difftool'
alias gco='git checkout'
alias gm='git merge'
alias gp='git push'
alias gc='git commit -v'
alias gca='git commit -va'
alias gcm='git commit -m'
alias gsw='git switch'
alias gswc='git switch -c'
alias gr='git restore'
alias gmv='git mv'

# Vim/Neovim
alias v='vim'
alias nv='nvim'
alias view='nvim -R'

# Better ls
alias ls="ls --color=auto"
alias la="ls --color=auto -a"
alias ll="ls --color=auto -lah"

# Quick way to get out of current directory
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .......='cd ../../../../../../'
alias ........='cd ../../../../../../../'
alias .........='cd ../../../../../../../../'
alias ..........='cd ../../../../../../../../../'
alias ...........='cd ../../../../../../../../../../'
alias ............='cd ../../../../../../../../../../../'
alias .............='cd ../../../../../../../../../../../../'

# Colorize the grep command
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Quick cd
alias d='dirs -v'
for index in {1..9}; alias $index="cd +$index"
unset index

# Mac nostalgia
alias pbcopy='xsel -ib'
alias pbpaste='xsel -ob'

# tmuxp
alias rec="tmuxp load --yes recording"
