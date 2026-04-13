LOCAL_BIN="$HOME/.local/bin"
DOCKER_BIN="$HOME/.docker/bin"
GO_BIN="$HOME/go/bin"
PROMPT="%F{250}%* %F{14}%~%f%f %B%F{141}λ%f%b "

HISTSIZE=100
SAVEHIST=100
HISTFILE=~/.zsh_history

export PATH="$LOCAL_BIN:$DOCKER_BIN:$GO_BIN:$PATH"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad

autoload -Uz compinit
compinit

setopt autocd
setopt auto_menu
setopt menu_complete
setopt hist_ignore_dups

zstyle ':completion:*' menu select

alias cls="clear"
alias sozsh="source $HOME/.zshrc"

alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'

alias ll="ls -AFlh"
alias l="ls -CF"
