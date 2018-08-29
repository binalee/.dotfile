alias grep='grep --color=auto'
alias mkdir='mkdir -p -v'
alias o='open'

alias rmmerged='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
