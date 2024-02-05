# https://starship.rs/
eval "$(starship init zsh)"

# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

autoload -Uz compinit
compinit

alias vi=nvim
alias k=kubectl
alias ls='ls -la --color=auto'

export EDITOR=nvim
