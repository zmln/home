vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  use("nvim-treesitter/nvim-treesitter")
  use("nvim-treesitter/nvim-treesitter-textobjects")

  use("neovim/nvim-lspconfig")

  use({
    "hrsh7th/nvim-cmp",
    requires = {
      {"hrsh7th/cmp-nvim-lsp"},
      {"hrsh7th/cmp-path"},
      {"hrsh7th/cmp-buffer"},
      {"uga-rosa/cmp-dictionary"},
    }
  })

  use("L3MON4D3/LuaSnip")

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
  }

  use {"ellisonleao/glow.nvim", branch = 'main'}
  use({"dracula/vim", as = "dracula"})
end)
