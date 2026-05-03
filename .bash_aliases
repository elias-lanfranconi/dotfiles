LB="$HOME/.local/bin"
NVIM_PATH="$LB/nvim"

export EDITOR="$NVIM_PATH"
export VISUAL="$NVIM_PATH"

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

