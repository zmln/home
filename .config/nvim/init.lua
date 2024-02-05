vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

vim.g.mapleader = ' '

local opts = {
  install = {
    missing = true,
    colorscheme = { 'dracula' },
  },
}

require('lazy').setup({
  {'maxmx03/dracula.nvim', lazy = false, priority = 1000,
  config = function()
    local dracula = require('dracula')
    dracula.setup()
    vim.cmd.colorscheme 'dracula'
  end
  },
  {'nvim-lua/plenary.nvim'},

  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {'nvim-treesitter/nvim-treesitter-textobjects'},
  {'neovim/nvim-lspconfig'},

  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'hrsh7th/nvim-cmp'},

--  {'L3MON4D3/LuaSnip'},
--  {'saadparwaiz1/cmp_luasnip'},

  {'nvim-tree/nvim-web-devicons'},
  {'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},
  {'nvim-tree/nvim-tree.lua', dependencies = {'nvim-tree/nvim-web-devicons'}},

  {'nvim-telescope/telescope.nvim', dependencies = {'nvim-lua/plenary.nvim'}},

  {'folke/which-key.nvim', event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  }
}, opts)

require('options')
require('treesitter')
require('autocomplete')
require('fileexplorer')
require('statusline')
require('fuzzyfinder')
