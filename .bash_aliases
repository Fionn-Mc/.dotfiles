shopt -s autocd



alias cd..='cd ..'
# alias cf='fzf --preview "bat -n --color=always {}" --print0 | xargs -0 -o code'
alias cf="fzf --bind 'enter:become(code {})' --preview 'bat -n --color=always {}' --print0"
alias cfz='code $(fzf)'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias fzfv='fzf --preview "bat -n --color=always {}" --print0'
alias gc='git commit -m '
alias gco='git checkout '
alias gcam='git commit -a -m '
alias gl='git log'
alias grep='grep --color=auto'
alias gs='git status'
alias gsp='git status --porcelain'
alias h='history'
alias hg='history | grep -i'

alias bat='batcat'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias p='python3'
alias python='python3'
alias v='vim'
alias code='codium'
# alias vf='fzf --preview "bat -n --color=always {}" --print0 | xargs -0 -o vim'
alias vf="fzf --bind 'enter:become(vim {})' --preview 'bat -n --color=always {}' --print0"
# alias vfz="fzf --bind '\''enter:become(vim {})'\''"

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias c='clear'


alias cons1='sudo minicom -D /dev/ttyUSB0 -b 9600'
