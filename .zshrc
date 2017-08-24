HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
autoload -Uz compinit
compinit
PROMPT='%m:%~%# '
watch=all
export GOPATH=$HOME/devel/go
export PATH="$PATH:$HOME/bin/:/usr/local/go/bin:$GOPATH/bin"
alias startx='startx -- -nolisten tcp'
