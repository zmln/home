call plug#begin('~/.local/share/nvim/plugged')
Plug 'dracula/vim'
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" javascript and typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()

set encoding=utf-8
scriptencoding utf-8
set ffs=unix,dos,mac

" prevent unnecessary files
set nobackup
set nowb
set noswapfile

let mapleader=","
let g:mapleader=","

source ~/.config/nvim/visuals.vim
source ~/.config/nvim/audio.vim
source ~/.config/nvim/navigation.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/wiki.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/go.vim
