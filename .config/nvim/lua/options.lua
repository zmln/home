local opt = vim.opt

-- Remap Leader
vim.mapleader = ","
vim.g.mapleader = ","

-- Files
opt.backup = false
opt.swapfile = false
opt.wb = false
opt.fileencoding = 'utf-8'

-- Audio
opt.errorbells = false
opt.visualbell = false

-- Visuals
opt.background = 'dark'
opt.cmdheight = 2
opt.expandtab = true
opt.list = true
opt.mat = 2
opt.number = true
opt.ruler = true
opt.shiftwidth = 2
opt.showtabline = 2
opt.smarttab = true
opt.so = 8
opt.syntax = 'on'
opt.tabstop = 2
opt.softtabstop = 2

vim.cmd([[colorscheme dracula]])

-- Navigation
opt.backspace = "eol,start,indent"
opt.whichwrap = opt.whichwrap + "<,>,h,l"
opt.wrap = true

-- Search
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.showmatch = true
opt.smartcase = true

-- OS
opt.clipboard = 'unnamedplus'

opt.wildignorecase = true
opt.wildignore = [[
.git
*.out
*.o,*.obj,*.exe,*.dll,*.class
*.ai,*.bmp,*gif,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
*.eot,*.otf,*.ttf,*.woff
*.swp,.lock,.DS_Store
**/node_modules/**,*.so,*.swp
]]
