require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'go',
    'json',
    'lua',
    'yaml',
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
})
