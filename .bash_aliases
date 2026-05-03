LB="$HOME/.local/bin"
NVIM_PATH="$LB/nvim"

export EDITOR="$NVIM_PATH"
export VISUAL="$NVIM_PATH"

function nconf {
	pushd "$HOME/.config/nvim" > /dev/null
	$LB/nvim .
	popd > /dev/null
}
alias srcb="source ~/.bashrc"
alias cls="clear"

alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'

alias ll='ls -AFlh'
alias l='ls -CF'

alias docs='cd ~/Documents'
alias repos='cd ~/Repos'
alias downloads='cd ~/Downloads'

for cmd in n vim nvim; do
  alias "$cmd=$NVIM_PATH"
done

