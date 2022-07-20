require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'go',
    'json',
    'lua',
    'yaml',
    'hcl',
  },
  auto_install = true,
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
})
