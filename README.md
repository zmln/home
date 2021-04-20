# dotfiles and other setup

I followed the guide at https://atlassian.com/git/tutorials/dotfiles

Snippet copied from there.
```
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```

To restore files on a new system:
```
git clone --bare <git-repo-url> $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config checkout
config config --local status.showUntrackedFiles no
```

## Packages
```
pacman -Syu
pacman -S zsh \
          git \
          openssh \
          python3 \
          neovim \
          python-neovim \
          tmux
```

## Other
- [oh-my-zsh](https://ohmyz.sh)
  `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- [spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt)
  `git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1`
  `ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`
- [vim-plug](https://github.comjunegunn/vim-plug)
  `sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
- [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
  `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

## TODO
[ ] Evaluate starship prompt
