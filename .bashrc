LB="$HOME/.local/bin"
NVIM_PATH="$LB/nvim"
PROMPT="%F{250}%* %F{14}%~%f%f %B%F{141}λ%f%b "

HISTSIZE=100
SAVEHIST=100
HISTFILE=~/.zsh_history

export CLICOLOR=1
export PATH="$LB:$PATH"
export EDITOR="$NVIM_PATH"
export VISUAL="$NVIM_PATH"
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
alias zshrc="$LB/nvim $HOME/.zshrc"
alias nvim-conf="cd $HOME/.config/nvim && $LB/nvim ."

alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'

alias ll="ls -AFlh"
alias l="ls -CF"

for cmd in n vim nvim; do
  alias "$cmd=$NVIM_PATH"
done

