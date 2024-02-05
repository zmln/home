local opt = vim.opt

-- files
opt.backup = false
opt.swapfile = false
opt.wb = false

-- distractions
opt.errorbells = false
opt.visualbell = false

-- visuals
opt.background = 'dark'
opt.cmdheight = 2
opt.expandtab = true
opt.list = true
opt.mat = 2
opt.number = true
opt.ruler = true
opt.shiftwidth = 2
opt.smarttab = true
opt.so = 8
opt.syntax = 'on'
opt.tabstop = 2
opt.softtabstop = 2
opt.termguicolors = true

-- navigation
opt.backspace = 'eol,start,indent'
opt.whichwrap = opt.whichwrap + '<,>,h,l'
opt.wrap = true

-- search
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.showmatch = true
opt.smartcase = true

-- might be causing some lag
-- opt.clipboard = 'unnamedplus'

opt.wildignorecase = true
opt.wildignore = [[
.git
*.out
*.o,*.obj,*.exe,*.dll,*.class
*.ai,*.bmp,*.gif,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
*.eot,*.otf,*.ttf,*.woff
*.swp,.lock,.DS_Store
**/node_modules/**,*.so
]]

