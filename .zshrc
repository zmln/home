# https://starship.rs/
eval "$(starship init zsh)"

# Remove windows binaries from the path
export PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib'

# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

autoload -Uz compinit
compinit

alias vi=nvim
alias k=kubectl
alias kn='kubectl -n $(basename "$PWD")'
alias ls='ls -la --color=auto'

export EDITOR=nvim

umask 0002
