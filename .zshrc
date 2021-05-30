HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
bindkey '^R' history-incremental-search-backward
autoload -Uz compinit
compinit
PROMPT='%m:%~%# '
watch=all
export GOPATH=$HOME/devel/go
export PATH="$PATH:$HOME/bin/:/usr/local/go/bin:$GOPATH/bin"
alias startx='startx -- -nolisten tcp'
alias ls='ls --color'
alias vi='vim'
alias audacity='env GDK_BACKEND=x11 audacity'
